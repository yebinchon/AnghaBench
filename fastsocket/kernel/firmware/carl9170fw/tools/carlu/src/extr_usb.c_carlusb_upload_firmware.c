
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct carlu {int dev_list; int * dev; scalar_t__ miniboot_size; int fw; } ;


 int EXIT_FAILURE ;
 scalar_t__ IS_ERR_OR_NULL (void*) ;
 int LIBUSB_ERROR_TIMEOUT ;
 int PTR_ERR (void*) ;
 int SDL_Delay (int) ;
 void* carlfw_get_fw (int ,size_t*) ;
 int carlusb_get_dev (struct carlu*,int) ;
 int dbg (char*,...) ;
 int err (char*,int) ;
 int libusb_close (int *) ;
 int libusb_control_transfer (int *,int,int,int,int ,void*,int,int) ;
 int libusb_release_interface (int *,int ) ;
 int list_del (int *) ;

__attribute__((used)) static int carlusb_upload_firmware(struct carlu *ar, bool boot)
{
 uint32_t addr = 0x200000;
 size_t len;
 void *buf;
 int ret = 0;

 dbg("initiating firmware image upload procedure.\n");

 buf = carlfw_get_fw(ar->fw, &len);
 if (IS_ERR_OR_NULL(buf))
  return PTR_ERR(buf);

 if (ar->miniboot_size) {
  dbg("Miniboot firmware size:%d\n", ar->miniboot_size);
  len -= ar->miniboot_size;
  buf += ar->miniboot_size;
 }

 while (len) {
  int blocklen = len > 4096 ? 4096 : len;

  ret = libusb_control_transfer(ar->dev, 0x40, 0x30, addr >> 8, 0, buf, blocklen, 1000);
  if (ret != blocklen && ret != LIBUSB_ERROR_TIMEOUT) {
   err("==>firmware upload failed (%d)\n", ret);
   return -EXIT_FAILURE;
  }

  dbg("uploaded %d bytes to start address 0x%04x.\n", blocklen, addr);

  buf += blocklen;
  addr += blocklen;
  len -= blocklen;
 }

 if (boot) {
  ret = libusb_control_transfer(ar->dev, 0x40, 0x31, 0, 0, ((void*)0), 0, 5000);
  if (ret < 0) {
   err("unable to boot firmware (%d)\n", ret);
   return -EXIT_FAILURE;
  }


  SDL_Delay(100);





  libusb_release_interface(ar->dev, 0);
  libusb_close(ar->dev);
  ar->dev = ((void*)0);
  list_del(&ar->dev_list);

  ret = carlusb_get_dev(ar, 0);
 }

 return 0;
}
