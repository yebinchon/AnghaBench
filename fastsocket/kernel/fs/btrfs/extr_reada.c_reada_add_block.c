
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct reada_extent {int lock; int extctl; } ;
struct reada_extctl {int list; int generation; struct reada_control* rc; } ;
struct reada_control {int elems; struct btrfs_root* root; } ;
struct btrfs_root {int fs_info; } ;
struct btrfs_key {int dummy; } ;


 int GFP_NOFS ;
 int atomic_inc (int *) ;
 struct reada_extctl* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int reada_extent_put (int ,struct reada_extent*) ;
 struct reada_extent* reada_find_extent (struct btrfs_root*,int ,struct btrfs_key*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int reada_add_block(struct reada_control *rc, u64 logical,
      struct btrfs_key *top, int level, u64 generation)
{
 struct btrfs_root *root = rc->root;
 struct reada_extent *re;
 struct reada_extctl *rec;

 re = reada_find_extent(root, logical, top, level);
 if (!re)
  return -1;

 rec = kzalloc(sizeof(*rec), GFP_NOFS);
 if (!rec) {
  reada_extent_put(root->fs_info, re);
  return -1;
 }

 rec->rc = rc;
 rec->generation = generation;
 atomic_inc(&rc->elems);

 spin_lock(&re->lock);
 list_add_tail(&rec->list, &re->extctl);
 spin_unlock(&re->lock);



 return 0;
}
