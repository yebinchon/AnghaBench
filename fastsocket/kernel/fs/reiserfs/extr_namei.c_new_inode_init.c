
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_gid; int i_uid; } ;
struct TYPE_2__ {scalar_t__ k_objectid; } ;


 TYPE_1__* INODE_PKEY (struct inode*) ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 int current_fsgid () ;
 int current_fsuid () ;
 int vfs_dq_init (struct inode*) ;

__attribute__((used)) static int new_inode_init(struct inode *inode, struct inode *dir, int mode)
{




 inode->i_uid = current_fsuid();
 inode->i_mode = mode;


 INODE_PKEY(inode)->k_objectid = 0;

 if (dir->i_mode & S_ISGID) {
  inode->i_gid = dir->i_gid;
  if (S_ISDIR(mode))
   inode->i_mode |= S_ISGID;
 } else {
  inode->i_gid = current_fsgid();
 }
 vfs_dq_init(inode);
 return 0;
}
