
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int xattr_sem; } ;


 int ENODATA ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int down_read (int *) ;
 int ext4_xattr_block_get (struct inode*,int,char const*,void*,size_t) ;
 int ext4_xattr_ibody_get (struct inode*,int,char const*,void*,size_t) ;
 int up_read (int *) ;

int
ext4_xattr_get(struct inode *inode, int name_index, const char *name,
        void *buffer, size_t buffer_size)
{
 int error;

 down_read(&EXT4_I(inode)->xattr_sem);
 error = ext4_xattr_ibody_get(inode, name_index, name, buffer,
         buffer_size);
 if (error == -ENODATA)
  error = ext4_xattr_block_get(inode, name_index, name, buffer,
          buffer_size);
 up_read(&EXT4_I(inode)->xattr_sem);
 return error;
}
