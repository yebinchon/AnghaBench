
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlfb_data {int base16; int base16d; char* buf; int bulk_mutex; } ;


 int dlfb_bulk_msg (struct dlfb_data*,int) ;
 char* dlfb_set_register (char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void swapfb(struct dlfb_data *dev_info)
{

 int tmpbase;
 char *bufptr;

 mutex_lock(&dev_info->bulk_mutex);

 tmpbase = dev_info->base16;

 dev_info->base16 = dev_info->base16d;
 dev_info->base16d = tmpbase;

 bufptr = dev_info->buf;

 bufptr = dlfb_set_register(bufptr, 0xFF, 0x00);


 bufptr =
     dlfb_set_register(bufptr, 0x20, (char)(dev_info->base16 >> 16));
 bufptr = dlfb_set_register(bufptr, 0x21, (char)(dev_info->base16 >> 8));
 bufptr = dlfb_set_register(bufptr, 0x22, (char)(dev_info->base16));

 bufptr = dlfb_set_register(bufptr, 0xFF, 0x00);

 dlfb_bulk_msg(dev_info, bufptr - dev_info->buf);

 mutex_unlock(&dev_info->bulk_mutex);
}
