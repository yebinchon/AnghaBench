
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct dlfb_data {int base16; char* buf; char* bufend; char* backing_buffer; int bulk_mutex; TYPE_2__* info; } ;
struct TYPE_3__ {int xres; int yres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int BUF_HIGH_WATER_MARK ;
 int EINVAL ;
 int dlfb_bulk_msg (struct dlfb_data*,int) ;
 int memcpy (char*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 char* rle_compress16 (int *,char*,int) ;

__attribute__((used)) static int
image_blit(struct dlfb_data *dev_info, int x, int y, int width, int height,
    char *data)
{

 int i, j, base;
 int rem = width;
 int ret;

 int firstdiff, thistime;

 char *bufptr;

 if (x + width > dev_info->info->var.xres)
  return -EINVAL;

 if (y + height > dev_info->info->var.yres)
  return -EINVAL;

 mutex_lock(&dev_info->bulk_mutex);

 base =
     dev_info->base16 + ((dev_info->info->var.xres * 2 * y) + (x * 2));

 data += (dev_info->info->var.xres * 2 * y) + (x * 2);



 bufptr = dev_info->buf;

 for (i = y; i < y + height; i++) {

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

   thistime = rem;
   if (thistime > 255)
    thistime = 255;


   firstdiff = -1;
   for (j = 0; j < thistime * 2; j++) {
    if (dev_info->backing_buffer
        [base - dev_info->base16 + j] != data[j]) {
     firstdiff = j / 2;
     break;
    }
   }

   if (firstdiff >= 0) {
    char *end_of_rle;

    end_of_rle =
        rle_compress16((uint16_t *) (data +
         firstdiff * 2),
         bufptr,
         thistime - firstdiff);

    if (end_of_rle <
        bufptr + 6 + 2 * (thistime - firstdiff)) {
     bufptr[0] = 0xAF;
     bufptr[1] = 0x69;

     bufptr[2] =
         (char)((base +
          firstdiff * 2) >> 16);
     bufptr[3] =
         (char)((base + firstdiff * 2) >> 8);
     bufptr[4] =
         (char)(base + firstdiff * 2);
     bufptr[5] = thistime - firstdiff;

     bufptr = end_of_rle;

    } else {

     *bufptr++ = 0xAF;
     *bufptr++ = 0x68;

     *bufptr++ =
         (char)((base +
          firstdiff * 2) >> 16);
     *bufptr++ =
         (char)((base + firstdiff * 2) >> 8);
     *bufptr++ =
         (char)(base + firstdiff * 2);
     *bufptr++ = thistime - firstdiff;

     for (j = firstdiff * 2;
          j < thistime * 2; j += 2) {
      *bufptr++ = data[j + 1];
      *bufptr++ = data[j];
     }
    }
   }

   base += thistime * 2;
   data += thistime * 2;
   rem -= thistime;
  }

  memcpy(dev_info->backing_buffer + (base - dev_info->base16) -
         (width * 2), data - (width * 2), width * 2);

  base += (dev_info->info->var.xres * 2) - (width * 2);
  data += (dev_info->info->var.xres * 2) - (width * 2);

 }

 if (bufptr > dev_info->buf) {
  ret = dlfb_bulk_msg(dev_info, bufptr - dev_info->buf);
 }

 mutex_unlock(&dev_info->bulk_mutex);

 return base;

}
