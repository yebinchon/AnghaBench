
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_writecount; int i_mapping; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
struct TYPE_2__ {int i_state; int truncate_mutex; } ;


 TYPE_1__* EXT3_I (struct inode*) ;
 int EXT3_STATE_FLUSH_ON_CLOSE ;
 int FMODE_WRITE ;
 int atomic_read (int *) ;
 int ext3_discard_reservation (struct inode*) ;
 int ext3_htree_free_dir_info (scalar_t__) ;
 int filemap_flush (int ) ;
 scalar_t__ is_dx (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ext3_release_file (struct inode * inode, struct file * filp)
{
 if (EXT3_I(inode)->i_state & EXT3_STATE_FLUSH_ON_CLOSE) {
  filemap_flush(inode->i_mapping);
  EXT3_I(inode)->i_state &= ~EXT3_STATE_FLUSH_ON_CLOSE;
 }

 if ((filp->f_mode & FMODE_WRITE) &&
   (atomic_read(&inode->i_writecount) == 1))
 {
  mutex_lock(&EXT3_I(inode)->truncate_mutex);
  ext3_discard_reservation(inode);
  mutex_unlock(&EXT3_I(inode)->truncate_mutex);
 }
 if (is_dx(inode) && filp->private_data)
  ext3_htree_free_dir_info(filp->private_data);

 return 0;
}
