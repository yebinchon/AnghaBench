
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct inode {struct timespec i_ctime; int i_sb; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ i_disksize; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EOFBLOCKS ;
 int FALLOC_FL_KEEP_SIZE ;
 struct timespec current_fs_time (int ) ;
 int ext4_set_inode_flag (struct inode*,int ) ;
 int ext4_update_i_disksize (struct inode*,scalar_t__) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int timespec_equal (struct timespec*,struct timespec*) ;

__attribute__((used)) static void ext4_falloc_update_inode(struct inode *inode,
    int mode, loff_t new_size, int update_ctime)
{
 struct timespec now;

 if (update_ctime) {
  now = current_fs_time(inode->i_sb);
  if (!timespec_equal(&inode->i_ctime, &now))
   inode->i_ctime = now;
 }




 if (!(mode & FALLOC_FL_KEEP_SIZE)) {
  if (new_size > i_size_read(inode))
   i_size_write(inode, new_size);
  if (new_size > EXT4_I(inode)->i_disksize)
   ext4_update_i_disksize(inode, new_size);
 } else {




  if (new_size > i_size_read(inode))
   ext4_set_inode_flag(inode, EXT4_INODE_EOFBLOCKS);
 }

}
