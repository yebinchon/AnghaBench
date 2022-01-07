
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dlfb_data {int base16; char* buf; char* backing_buffer; char* bufend; int bulk_mutex; TYPE_2__* info; } ;
typedef unsigned char red ;
typedef int green ;
struct TYPE_3__ {int xres; int yres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int BUF_HIGH_WATER_MARK ;
 int EINVAL ;
 int dlfb_bulk_msg (struct dlfb_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
draw_rect(struct dlfb_data *dev_info, int x, int y, int width, int height,
   unsigned char red, unsigned char green, unsigned char blue)
{

 int i, j, base;
 int ret;
 unsigned short col =
     (((((red) & 0xF8) | ((green) >> 5)) & 0xFF) << 8) +
     (((((green) & 0x1C) << 3) | ((blue) >> 3)) & 0xFF);
 int rem = width;

 char *bufptr;

 if (x + width > dev_info->info->var.xres)
  return -EINVAL;

 if (y + height > dev_info->info->var.yres)
  return -EINVAL;

 mutex_lock(&dev_info->bulk_mutex);

 base = dev_info->base16 + (dev_info->info->var.xres * 2 * y) + (x * 2);

 bufptr = dev_info->buf;

 for (i = y; i < y + height; i++) {

  for (j = 0; j < width * 2; j += 2) {
   dev_info->backing_buffer[base - dev_info->base16 + j] =
       (char)(col >> 8);
   dev_info->backing_buffer[base - dev_info->base16 + j +
       1] = (char)(col);
  }
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
   *bufptr++ = 0x69;

   *bufptr++ = (char)(base >> 16);
   *bufptr++ = (char)(base >> 8);
   *bufptr++ = (char)(base);

   if (rem > 255) {
    *bufptr++ = 255;
    *bufptr++ = 255;
    rem -= 255;
    base += 255 * 2;
   } else {
    *bufptr++ = rem;
    *bufptr++ = rem;
    base += rem * 2;
    rem = 0;
   }

   *bufptr++ = (char)(col >> 8);
   *bufptr++ = (char)(col);

  }

  base += (dev_info->info->var.xres * 2) - (width * 2);

 }

 if (bufptr > dev_info->buf)
  ret = dlfb_bulk_msg(dev_info, bufptr - dev_info->buf);

 mutex_unlock(&dev_info->bulk_mutex);

 return 1;
}
