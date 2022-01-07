
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {scalar_t__ actual; scalar_t__ status; struct bulk_cb_wrap* buf; } ;
struct fsg_dev {scalar_t__ cmnd_size; scalar_t__ lun; int tag; int data_dir; int data_size; int cmnd; int bulk_out; int atomic_bitflags; } ;
struct fsg_buffhd {struct usb_request* outreq; } ;
struct bulk_cb_wrap {scalar_t__ Signature; scalar_t__ Lun; int Flags; scalar_t__ Length; scalar_t__ DataTransferLength; int Tag; int CDB; } ;
struct TYPE_2__ {scalar_t__ can_stall; } ;


 int DATA_DIR_FROM_HOST ;
 int DATA_DIR_NONE ;
 int DATA_DIR_TO_HOST ;
 int DBG (struct fsg_dev*,char*,scalar_t__,int,...) ;
 int EINVAL ;
 int IGNORE_BULK_OUT ;
 scalar_t__ MAX_COMMAND_SIZE ;
 scalar_t__ MAX_LUNS ;
 int USB_BULK_CB_SIG ;
 scalar_t__ USB_BULK_CB_WRAP_LEN ;
 int USB_BULK_IN_FLAG ;
 scalar_t__ cpu_to_le32 (int ) ;
 int fsg_set_halt (struct fsg_dev*,int ) ;
 int halt_bulk_in_endpoint (struct fsg_dev*) ;
 int le32_to_cpu (scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 TYPE_1__ mod_data ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wedge_bulk_in_endpoint (struct fsg_dev*) ;

__attribute__((used)) static int received_cbw(struct fsg_dev *fsg, struct fsg_buffhd *bh)
{
 struct usb_request *req = bh->outreq;
 struct bulk_cb_wrap *cbw = req->buf;


 if (req->status || test_bit(IGNORE_BULK_OUT, &fsg->atomic_bitflags))
  return -EINVAL;


 if (req->actual != USB_BULK_CB_WRAP_LEN ||
   cbw->Signature != cpu_to_le32(
    USB_BULK_CB_SIG)) {
  DBG(fsg, "invalid CBW: len %u sig 0x%x\n",
    req->actual,
    le32_to_cpu(cbw->Signature));
  wedge_bulk_in_endpoint(fsg);
  set_bit(IGNORE_BULK_OUT, &fsg->atomic_bitflags);
  return -EINVAL;
 }


 if (cbw->Lun >= MAX_LUNS || cbw->Flags & ~USB_BULK_IN_FLAG ||
   cbw->Length <= 0 || cbw->Length > MAX_COMMAND_SIZE) {
  DBG(fsg, "non-meaningful CBW: lun = %u, flags = 0x%x, "
    "cmdlen %u\n",
    cbw->Lun, cbw->Flags, cbw->Length);



  if (mod_data.can_stall) {
   fsg_set_halt(fsg, fsg->bulk_out);
   halt_bulk_in_endpoint(fsg);
  }
  return -EINVAL;
 }


 fsg->cmnd_size = cbw->Length;
 memcpy(fsg->cmnd, cbw->CDB, fsg->cmnd_size);
 if (cbw->Flags & USB_BULK_IN_FLAG)
  fsg->data_dir = DATA_DIR_TO_HOST;
 else
  fsg->data_dir = DATA_DIR_FROM_HOST;
 fsg->data_size = le32_to_cpu(cbw->DataTransferLength);
 if (fsg->data_size == 0)
  fsg->data_dir = DATA_DIR_NONE;
 fsg->lun = cbw->Lun;
 fsg->tag = cbw->Tag;
 return 0;
}
