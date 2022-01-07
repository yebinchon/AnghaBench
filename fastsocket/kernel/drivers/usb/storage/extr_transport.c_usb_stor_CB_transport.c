
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned int recv_bulk_pipe; unsigned int send_bulk_pipe; scalar_t__ protocol; int* iobuf; scalar_t__ subclass; int ifnum; int send_ctrl_pipe; } ;
struct scsi_cmnd {scalar_t__* cmnd; scalar_t__ sc_data_direction; int cmd_len; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ INQUIRY ;
 scalar_t__ REQUEST_SENSE ;
 int USB_RECIP_INTERFACE ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_FAILED ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int USB_STOR_XFER_STALLED ;
 int USB_TYPE_CLASS ;
 int US_CBI_ADSC ;
 int US_DEBUGP (char*,int,...) ;
 scalar_t__ US_PR_CBI ;
 scalar_t__ US_SC_UFI ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int usb_stor_bulk_srb (struct us_data*,unsigned int,struct scsi_cmnd*) ;
 int usb_stor_clear_halt (struct us_data*,unsigned int) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,int ,int,int ,int ,scalar_t__*,int ) ;
 int usb_stor_intr_transfer (struct us_data*,int*,int) ;

int usb_stor_CB_transport(struct scsi_cmnd *srb, struct us_data *us)
{
 unsigned int transfer_length = scsi_bufflen(srb);
 unsigned int pipe = 0;
 int result;



 result = usb_stor_ctrl_transfer(us, us->send_ctrl_pipe,
          US_CBI_ADSC,
          USB_TYPE_CLASS | USB_RECIP_INTERFACE, 0,
          us->ifnum, srb->cmnd, srb->cmd_len);


 US_DEBUGP("Call to usb_stor_ctrl_transfer() returned %d\n", result);


 if (result == USB_STOR_XFER_STALLED) {
  return USB_STOR_TRANSPORT_FAILED;
 }


 if (result != USB_STOR_XFER_GOOD) {
  return USB_STOR_TRANSPORT_ERROR;
 }



 if (transfer_length) {
  pipe = srb->sc_data_direction == DMA_FROM_DEVICE ?
    us->recv_bulk_pipe : us->send_bulk_pipe;
  result = usb_stor_bulk_srb(us, pipe, srb);
  US_DEBUGP("CBI data stage result is 0x%x\n", result);


  if (result == USB_STOR_XFER_STALLED)
   return USB_STOR_TRANSPORT_FAILED;
  if (result > USB_STOR_XFER_STALLED)
   return USB_STOR_TRANSPORT_ERROR;
 }






 if (us->protocol != US_PR_CBI)
  return USB_STOR_TRANSPORT_GOOD;

 result = usb_stor_intr_transfer(us, us->iobuf, 2);
 US_DEBUGP("Got interrupt data (0x%x, 0x%x)\n",
   us->iobuf[0], us->iobuf[1]);
 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;
 if (us->subclass == US_SC_UFI) {
  if (srb->cmnd[0] == REQUEST_SENSE ||
      srb->cmnd[0] == INQUIRY)
   return USB_STOR_TRANSPORT_GOOD;
  if (us->iobuf[0])
   goto Failed;
  return USB_STOR_TRANSPORT_GOOD;
 }







 if (us->iobuf[0]) {
  US_DEBUGP("CBI IRQ data showed reserved bType 0x%x\n",
    us->iobuf[0]);
  goto Failed;

 }


 switch (us->iobuf[1] & 0x0F) {
  case 0x00:
   return USB_STOR_TRANSPORT_GOOD;
  case 0x01:
   goto Failed;
 }
 return USB_STOR_TRANSPORT_ERROR;




  Failed:
 if (pipe)
  usb_stor_clear_halt(us, pipe);
 return USB_STOR_TRANSPORT_FAILED;
}
