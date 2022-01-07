
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {scalar_t__ iobuf; } ;
struct scsi_cmnd {int dummy; } ;
struct freecom_xfer_wrap {int Type; int Pad; int Count; scalar_t__ Timeout; } ;


 int FCM_PACKET_INPUT ;
 int FCM_PACKET_LENGTH ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int USB_STOR_XFER_SHORT ;
 int US_DEBUGP (char*,...) ;
 int cpu_to_le32 (int) ;
 int memset (int ,int ,int) ;
 int usb_stor_bulk_srb (struct us_data*,unsigned int,struct scsi_cmnd*) ;
 int usb_stor_bulk_transfer_buf (struct us_data*,unsigned int,struct freecom_xfer_wrap*,int ,int *) ;

__attribute__((used)) static int
freecom_readdata (struct scsi_cmnd *srb, struct us_data *us,
  unsigned int ipipe, unsigned int opipe, int count)
{
 struct freecom_xfer_wrap *fxfr =
  (struct freecom_xfer_wrap *) us->iobuf;
 int result;

 fxfr->Type = FCM_PACKET_INPUT | 0x00;
 fxfr->Timeout = 0;
 fxfr->Count = cpu_to_le32 (count);
 memset (fxfr->Pad, 0, sizeof (fxfr->Pad));

 US_DEBUGP("Read data Freecom! (c=%d)\n", count);


 result = usb_stor_bulk_transfer_buf (us, opipe, fxfr,
   FCM_PACKET_LENGTH, ((void*)0));
 if (result != USB_STOR_XFER_GOOD) {
  US_DEBUGP ("Freecom readdata transport error\n");
  return USB_STOR_TRANSPORT_ERROR;
 }


 US_DEBUGP("Start of read\n");
 result = usb_stor_bulk_srb(us, ipipe, srb);
 US_DEBUGP("freecom_readdata done!\n");

 if (result > USB_STOR_XFER_SHORT)
  return USB_STOR_TRANSPORT_ERROR;
 return USB_STOR_TRANSPORT_GOOD;
}
