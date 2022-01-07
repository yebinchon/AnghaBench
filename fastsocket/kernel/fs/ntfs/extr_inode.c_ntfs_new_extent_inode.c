
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_5__ {unsigned long mft_no; scalar_t__ name_len; int * name; int type; int mrec_lock; } ;
typedef TYPE_1__ ntfs_inode ;


 int AT_UNUSED ;
 int __ntfs_init_inode (struct super_block*,TYPE_1__*) ;
 int extent_inode_mrec_lock_key ;
 scalar_t__ likely (int ) ;
 int lockdep_set_class (int *,int *) ;
 TYPE_1__* ntfs_alloc_extent_inode () ;
 int ntfs_debug (char*) ;

inline ntfs_inode *ntfs_new_extent_inode(struct super_block *sb,
  unsigned long mft_no)
{
 ntfs_inode *ni = ntfs_alloc_extent_inode();

 ntfs_debug("Entering.");
 if (likely(ni != ((void*)0))) {
  __ntfs_init_inode(sb, ni);
  lockdep_set_class(&ni->mrec_lock, &extent_inode_mrec_lock_key);
  ni->mft_no = mft_no;
  ni->type = AT_UNUSED;
  ni->name = ((void*)0);
  ni->name_len = 0;
 }
 return ni;
}
