
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; int transfer_buffer; struct mdc800_data* context; } ;
struct mdc800_data {int out_count; scalar_t__ download_left; int downloaded; int download_wait; TYPE_1__* dev; int state; scalar_t__ out_ptr; int out; } ;
struct TYPE_2__ {int dev; } ;


 int READY ;
 int dev_err (int *,char*,int) ;
 int memcpy (int ,int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void mdc800_usb_download_notify (struct urb *urb)
{
 struct mdc800_data* mdc800=urb->context;
 int status = urb->status;

 if (status == 0) {

  memcpy (mdc800->out, urb->transfer_buffer, 64);
  mdc800->out_count=64;
  mdc800->out_ptr=0;
  mdc800->download_left-=64;
  if (mdc800->download_left == 0)
  {
   mdc800->state=READY;
  }
 } else {
  dev_err(&mdc800->dev->dev,
   "request bytes fails (status:%i)\n", status);
 }
 mdc800->downloaded = 1;
 wake_up (&mdc800->download_wait);
}
