
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int cifsFileInfo_put (int *) ;

int cifs_close(struct inode *inode, struct file *file)
{
 if (file->private_data != ((void*)0)) {
  cifsFileInfo_put(file->private_data);
  file->private_data = ((void*)0);
 }


 return 0;
}
