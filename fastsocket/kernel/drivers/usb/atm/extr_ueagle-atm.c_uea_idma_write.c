
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct uea_softc {int usb_dev; } ;


 int BULK_TIMEOUT ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int UEA_IDMA_PIPE ;
 int kfree (int *) ;
 int * kmemdup (void const*,int,int ) ;
 int uea_err (int ,char*,...) ;
 int usb_bulk_msg (int ,int ,int *,int,int*,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int uea_idma_write(struct uea_softc *sc, const void *data, u32 size)
{
 int ret = -ENOMEM;
 u8 *xfer_buff;
 int bytes_read;

 xfer_buff = kmemdup(data, size, GFP_KERNEL);
 if (!xfer_buff) {
  uea_err(INS_TO_USBDEV(sc), "can't allocate xfer_buff\n");
  return ret;
 }

 ret = usb_bulk_msg(sc->usb_dev,
    usb_sndbulkpipe(sc->usb_dev, UEA_IDMA_PIPE),
    xfer_buff, size, &bytes_read, BULK_TIMEOUT);

 kfree(xfer_buff);
 if (ret < 0)
  return ret;
 if (size != bytes_read) {
  uea_err(INS_TO_USBDEV(sc), "size != bytes_read %d %d\n", size,
         bytes_read);
  return -EIO;
 }

 return 0;
}
