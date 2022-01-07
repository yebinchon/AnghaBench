
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int stride; } ;
struct usbatm_data {unsigned int buf_usage; unsigned char* cell_buf; TYPE_1__ rx_channel; } ;


 int UDSL_ASSERT (struct usbatm_data*,int) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 int usbatm_extract_one_cell (struct usbatm_data*,unsigned char*) ;

__attribute__((used)) static void usbatm_extract_cells(struct usbatm_data *instance,
  unsigned char *source, unsigned int avail_data)
{
 unsigned int stride = instance->rx_channel.stride;
 unsigned int buf_usage = instance->buf_usage;




 if (buf_usage > 0) {

  unsigned char *cell_buf = instance->cell_buf;
  unsigned int space_left = stride - buf_usage;

  UDSL_ASSERT(instance, buf_usage <= stride);

  if (avail_data >= space_left) {

   memcpy(cell_buf + buf_usage, source, space_left);
   source += space_left;
   avail_data -= space_left;
   usbatm_extract_one_cell(instance, cell_buf);
   instance->buf_usage = 0;
  } else {

   memcpy(cell_buf + buf_usage, source, avail_data);
   instance->buf_usage = buf_usage + avail_data;
   return;
  }
 }

 for (; avail_data >= stride; avail_data -= stride, source += stride)
  usbatm_extract_one_cell(instance, source);

 if (avail_data > 0) {


  memcpy(instance->cell_buf, source, avail_data);
  instance->buf_usage = avail_data;
 }
}
