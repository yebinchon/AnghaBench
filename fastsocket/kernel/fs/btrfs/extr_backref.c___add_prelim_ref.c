
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct list_head {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct __prelim_ref {int level; int count; int list; void* wanted_disk_byte; void* parent; int * inode_list; struct btrfs_key key_for_search; void* root_id; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct __prelim_ref* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int memset (struct btrfs_key*,int ,int) ;

__attribute__((used)) static int __add_prelim_ref(struct list_head *head, u64 root_id,
       struct btrfs_key *key, int level,
       u64 parent, u64 wanted_disk_byte, int count)
{
 struct __prelim_ref *ref;


 ref = kmalloc(sizeof(*ref), GFP_ATOMIC);
 if (!ref)
  return -ENOMEM;

 ref->root_id = root_id;
 if (key)
  ref->key_for_search = *key;
 else
  memset(&ref->key_for_search, 0, sizeof(ref->key_for_search));

 ref->inode_list = ((void*)0);
 ref->level = level;
 ref->count = count;
 ref->parent = parent;
 ref->wanted_disk_byte = wanted_disk_byte;
 list_add_tail(&ref->list, head);

 return 0;
}
