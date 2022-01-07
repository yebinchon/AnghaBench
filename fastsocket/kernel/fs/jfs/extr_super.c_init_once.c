
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_inode_info {int active_ag; int vfs_inode; int ag_lock; int xattr_sem; int commit_mutex; int rdwrlock; int anon_inode_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;
 int inode_init_once (int *) ;
 int memset (struct jfs_inode_info*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct jfs_inode_info *jfs_ip = (struct jfs_inode_info *) foo;

 memset(jfs_ip, 0, sizeof(struct jfs_inode_info));
 INIT_LIST_HEAD(&jfs_ip->anon_inode_list);
 init_rwsem(&jfs_ip->rdwrlock);
 mutex_init(&jfs_ip->commit_mutex);
 init_rwsem(&jfs_ip->xattr_sem);
 spin_lock_init(&jfs_ip->ag_lock);
 jfs_ip->active_ag = -1;
 inode_init_once(&jfs_ip->vfs_inode);
}
