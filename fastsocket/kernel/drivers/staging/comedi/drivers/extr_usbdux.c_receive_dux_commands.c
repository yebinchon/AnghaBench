
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbduxsub {int * insnBuffer; TYPE_2__* comedidev; TYPE_1__* interface; int usbdev; } ;
struct TYPE_4__ {int minor; } ;
struct TYPE_3__ {int dev; } ;


 int COMMAND_IN_EP ;
 int EFAULT ;
 int RETRIES ;
 int SIZEINSNBUF ;
 int dev_err (int *,char*,int ,int,...) ;
 int le16_to_cpu (int ) ;
 int usb_bulk_msg (int ,int ,int *,int ,int*,int) ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static int receive_dux_commands(struct usbduxsub *this_usbduxsub, int command)
{
 int result = (-EFAULT);
 int nrec;
 int i;

 for (i = 0; i < RETRIES; i++) {
  result = usb_bulk_msg(this_usbduxsub->usbdev,
          usb_rcvbulkpipe(this_usbduxsub->usbdev,
            COMMAND_IN_EP),
          this_usbduxsub->insnBuffer, SIZEINSNBUF,
          &nrec, 1);
  if (result < 0) {
   dev_err(&this_usbduxsub->interface->dev, "comedi%d: "
    "insn: USB error %d while receiving DUX command"
    "\n", this_usbduxsub->comedidev->minor, result);
   return result;
  }
  if (le16_to_cpu(this_usbduxsub->insnBuffer[0]) == command)
   return result;
 }


 dev_err(&this_usbduxsub->interface->dev, "comedi%d: insn: "
  "wrong data returned from firmware: want cmd %d, got cmd %d.\n",
  this_usbduxsub->comedidev->minor, command,
  le16_to_cpu(this_usbduxsub->insnBuffer[0]));
 return -EFAULT;
}
