
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dlfb_data {int base16; char* buf; char* bufend; int bulk_mutex; TYPE_2__* info; scalar_t__ backing_buffer; } ;
struct TYPE_3__ {int xres; int yres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int BUF_HIGH_WATER_MARK ;
 int EINVAL ;
 int dlfb_bulk_msg (struct dlfb_data*,int) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
copyarea(struct dlfb_data *dev_info, int dx, int dy, int sx, int sy,
  int width, int height)
{
 int base;
 int source;
 int rem;
 int i, ret;

 char *bufptr;

 if (dx + width > dev_info->info->var.xres)
  return -EINVAL;

 if (dy + height > dev_info->info->var.yres)
  return -EINVAL;

 mutex_lock(&dev_info->bulk_mutex);

 base =
     dev_info->base16 + (dev_info->info->var.xres * 2 * dy) + (dx * 2);
 source = (dev_info->info->var.xres * 2 * sy) + (sx * 2);

 bufptr = dev_info->buf;

 for (i = sy; i < sy + height; i++) {

  memcpy(dev_info->backing_buffer + base - dev_info->base16,
         dev_info->backing_buffer + source, width * 2);

  if (dev_info->bufend - bufptr < BUF_HIGH_WATER_MARK) {
   ret = dlfb_bulk_msg(dev_info, bufptr - dev_info->buf);
   bufptr = dev_info->buf;
  }

  rem = width;

  while (rem) {

   if (dev_info->bufend - bufptr < BUF_HIGH_WATER_MARK) {
    ret =
        dlfb_bulk_msg(dev_info,
        bufptr - dev_info->buf);
    bufptr = dev_info->buf;
   }

   *bufptr++ = 0xAF;
   *bufptr++ = 0x6A;

   *bufptr++ = (char)(base >> 16);
   *bufptr++ = (char)(base >> 8);
   *bufptr++ = (char)(base);

   if (rem > 255) {
    *bufptr++ = 255;
    *bufptr++ = (char)(source >> 16);
    *bufptr++ = (char)(source >> 8);
    *bufptr++ = (char)(source);

    rem -= 255;
    base += 255 * 2;
    source += 255 * 2;

   } else {
    *bufptr++ = rem;
    *bufptr++ = (char)(source >> 16);
    *bufptr++ = (char)(source >> 8);
    *bufptr++ = (char)(source);

    base += rem * 2;
    source += rem * 2;
    rem = 0;
   }
  }

  base += (dev_info->info->var.xres * 2) - (width * 2);
  source += (dev_info->info->var.xres * 2) - (width * 2);
 }

 if (bufptr > dev_info->buf)
  ret = dlfb_bulk_msg(dev_info, bufptr - dev_info->buf);

 mutex_unlock(&dev_info->bulk_mutex);

 return 1;
}
