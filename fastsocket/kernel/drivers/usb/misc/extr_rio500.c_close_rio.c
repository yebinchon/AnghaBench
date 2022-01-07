
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_usb_data {TYPE_1__* rio_dev; scalar_t__ isopen; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 struct rio_usb_data rio_instance ;

__attribute__((used)) static int close_rio(struct inode *inode, struct file *file)
{
 struct rio_usb_data *rio = &rio_instance;

 rio->isopen = 0;

 dev_info(&rio->rio_dev->dev, "Rio closed.\n");
 return 0;
}
