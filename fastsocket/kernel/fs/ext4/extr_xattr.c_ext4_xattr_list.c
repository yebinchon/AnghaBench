
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int xattr_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int down_read (int *) ;
 int ext4_xattr_block_list (struct inode*,char*,size_t) ;
 int ext4_xattr_ibody_list (struct inode*,char*,size_t) ;
 int up_read (int *) ;

__attribute__((used)) static int
ext4_xattr_list(struct inode *inode, char *buffer, size_t buffer_size)
{
 int i_error, b_error;

 down_read(&EXT4_I(inode)->xattr_sem);
 i_error = ext4_xattr_ibody_list(inode, buffer, buffer_size);
 if (i_error < 0) {
  b_error = 0;
 } else {
  if (buffer) {
   buffer += i_error;
   buffer_size -= i_error;
  }
  b_error = ext4_xattr_block_list(inode, buffer, buffer_size);
  if (b_error < 0)
   i_error = 0;
 }
 up_read(&EXT4_I(inode)->xattr_sem);
 return i_error + b_error;
}
