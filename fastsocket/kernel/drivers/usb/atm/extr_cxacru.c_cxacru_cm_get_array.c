
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct cxacru_data {int usbatm; } ;
typedef enum cxacru_cm_request { ____Placeholder_cxacru_cm_request } cxacru_cm_request ;
typedef int __le32 ;


 int CMD_PACKET_SIZE ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cxacru_cm (struct cxacru_data*,int,int *,int ,int *,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ printk_ratelimit () ;
 int usb_err (int ,char*,int,int) ;

__attribute__((used)) static int cxacru_cm_get_array(struct cxacru_data *instance, enum cxacru_cm_request cm,
          u32 *data, int size)
{
 int ret, len;
 __le32 *buf;
 int offb, offd;
 const int stride = CMD_PACKET_SIZE / (4 * 2) - 1;
 int buflen = ((size - 1) / stride + 1 + size * 2) * 4;

 buf = kmalloc(buflen, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = cxacru_cm(instance, cm, ((void*)0), 0, (u8 *) buf, buflen);
 if (ret < 0)
  goto cleanup;


 len = ret / 4;
 for (offb = 0; offb < len; ) {
  int l = le32_to_cpu(buf[offb++]);
  if (l > stride || l > (len - offb) / 2) {
   if (printk_ratelimit())
    usb_err(instance->usbatm, "invalid data length from cm %#x: %d\n",
     cm, l);
   ret = -EIO;
   goto cleanup;
  }
  while (l--) {
   offd = le32_to_cpu(buf[offb++]);
   if (offd >= size) {
    if (printk_ratelimit())
     usb_err(instance->usbatm, "wrong index %#x in response to cm %#x\n",
      offd, cm);
    ret = -EIO;
    goto cleanup;
   }
   data[offd] = le32_to_cpu(buf[offb++]);
  }
 }

 ret = 0;

cleanup:
 kfree(buf);
 return ret;
}
