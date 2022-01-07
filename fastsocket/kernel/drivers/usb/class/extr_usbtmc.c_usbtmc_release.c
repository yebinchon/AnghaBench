
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_device_data {int kref; } ;
struct inode {int dummy; } ;
struct file {struct usbtmc_device_data* private_data; } ;


 int kref_put (int *,int ) ;
 int usbtmc_delete ;

__attribute__((used)) static int usbtmc_release(struct inode *inode, struct file *file)
{
 struct usbtmc_device_data *data = file->private_data;

 kref_put(&data->kref, usbtmc_delete);
 return 0;
}
