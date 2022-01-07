
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ecryptfs_inode_info {int lower_file_mutex; TYPE_1__* lower_file; } ;
typedef int ssize_t ;
typedef int mm_segment_t ;
typedef int loff_t ;
struct TYPE_2__ {int f_pos; } ;


 int BUG_ON (int) ;
 struct ecryptfs_inode_info* ecryptfs_inode_to_private (struct inode*) ;
 int get_ds () ;
 int get_fs () ;
 int mark_inode_dirty_sync (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_fs (int ) ;
 int vfs_write (TYPE_1__*,char*,size_t,int *) ;

int ecryptfs_write_lower(struct inode *ecryptfs_inode, char *data,
    loff_t offset, size_t size)
{
 struct ecryptfs_inode_info *inode_info;
 mm_segment_t fs_save;
 ssize_t rc;

 inode_info = ecryptfs_inode_to_private(ecryptfs_inode);
 mutex_lock(&inode_info->lower_file_mutex);
 BUG_ON(!inode_info->lower_file);
 inode_info->lower_file->f_pos = offset;
 fs_save = get_fs();
 set_fs(get_ds());
 rc = vfs_write(inode_info->lower_file, data, size,
         &inode_info->lower_file->f_pos);
 set_fs(fs_save);
 mutex_unlock(&inode_info->lower_file_mutex);
 mark_inode_dirty_sync(ecryptfs_inode);
 return rc;
}
