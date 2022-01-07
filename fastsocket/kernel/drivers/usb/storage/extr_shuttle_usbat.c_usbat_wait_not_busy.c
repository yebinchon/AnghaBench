
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; } ;


 int USBAT_ATA ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_FAILED ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int US_DEBUGP (char*,int) ;
 int msleep (int) ;
 int usbat_get_status (struct us_data*,unsigned char*) ;
 int usbat_read (struct us_data*,int ,int,unsigned char*) ;

__attribute__((used)) static int usbat_wait_not_busy(struct us_data *us, int minutes)
{
 int i;
 int result;
 unsigned char *status = us->iobuf;







 for (i=0; i<1200+minutes*60; i++) {

   result = usbat_get_status(us, status);

  if (result!=USB_STOR_XFER_GOOD)
   return USB_STOR_TRANSPORT_ERROR;
  if (*status & 0x01) {
   result = usbat_read(us, USBAT_ATA, 0x10, status);
   return USB_STOR_TRANSPORT_FAILED;
  }
  if (*status & 0x20)
   return USB_STOR_TRANSPORT_FAILED;

  if ((*status & 0x80)==0x00) {
   US_DEBUGP("Waited not busy for %d steps\n", i);
   return USB_STOR_TRANSPORT_GOOD;
  }

  if (i<500)
   msleep(10);
  else if (i<700)
   msleep(50);
  else if (i<1200)
   msleep(100);
  else
   msleep(1000);
 }

 US_DEBUGP("Waited not busy for %d minutes, timing out.\n",
  minutes);
 return USB_STOR_TRANSPORT_FAILED;
}
