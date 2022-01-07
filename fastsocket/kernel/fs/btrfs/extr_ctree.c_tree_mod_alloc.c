
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seq; scalar_t__ flags; } ;
struct tree_mod_elem {TYPE_1__ elem; } ;
struct btrfs_fs_info {int tree_mod_seq_lock; int tree_mod_seq_list; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int __get_tree_mod_seq (struct btrfs_fs_info*,TYPE_1__*) ;
 int kfree (struct tree_mod_elem*) ;
 struct tree_mod_elem* kzalloc (int,int ) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tree_mod_dont_log (struct btrfs_fs_info*,int *) ;

__attribute__((used)) static inline int tree_mod_alloc(struct btrfs_fs_info *fs_info, gfp_t flags,
     struct tree_mod_elem **tm_ret)
{
 struct tree_mod_elem *tm;
 int seq;

 if (tree_mod_dont_log(fs_info, ((void*)0)))
  return 0;

 tm = *tm_ret = kzalloc(sizeof(*tm), flags);
 if (!tm)
  return -ENOMEM;

 tm->elem.flags = 0;
 spin_lock(&fs_info->tree_mod_seq_lock);
 if (list_empty(&fs_info->tree_mod_seq_list)) {






  kfree(tm);
  seq = 0;
  spin_unlock(&fs_info->tree_mod_seq_lock);
 } else {
  __get_tree_mod_seq(fs_info, &tm->elem);
  seq = tm->elem.seq;
 }

 return seq;
}
