
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usbduxsub {int numOfInBuffers; int numOfOutBuffers; scalar_t__ pwm_cmd_running; scalar_t__ ao_cmd_running; scalar_t__ ai_cmd_running; TYPE_2__** dux_commands; TYPE_2__** dac_commands; TYPE_2__** inBuffer; TYPE_2__** insnBuffer; TYPE_2__* urbPwm; TYPE_2__** urbOut; TYPE_2__** urbIn; scalar_t__ probed; TYPE_1__* interface; } ;
struct TYPE_6__ {struct TYPE_6__** transfer_buffer; } ;
struct TYPE_5__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int kfree (TYPE_2__**) ;
 int usb_free_urb (TYPE_2__*) ;
 int usb_kill_urb (TYPE_2__*) ;
 int usb_set_intfdata (TYPE_1__*,int *) ;
 int usbduxsub_unlink_InURBs (struct usbduxsub*) ;
 int usbduxsub_unlink_OutURBs (struct usbduxsub*) ;
 int usbduxsub_unlink_PwmURBs (struct usbduxsub*) ;

__attribute__((used)) static void tidy_up(struct usbduxsub *usbduxsub_tmp)
{
 int i;

 if (!usbduxsub_tmp)
  return;
 dev_dbg(&usbduxsub_tmp->interface->dev, "comedi_: tiding up\n");


 if (usbduxsub_tmp->interface)
  usb_set_intfdata(usbduxsub_tmp->interface, ((void*)0));

 usbduxsub_tmp->probed = 0;

 if (usbduxsub_tmp->urbIn) {
  if (usbduxsub_tmp->ai_cmd_running) {
   usbduxsub_tmp->ai_cmd_running = 0;
   usbduxsub_unlink_InURBs(usbduxsub_tmp);
  }
  for (i = 0; i < usbduxsub_tmp->numOfInBuffers; i++) {
   kfree(usbduxsub_tmp->urbIn[i]->transfer_buffer);
   usbduxsub_tmp->urbIn[i]->transfer_buffer = ((void*)0);
   usb_kill_urb(usbduxsub_tmp->urbIn[i]);
   usb_free_urb(usbduxsub_tmp->urbIn[i]);
   usbduxsub_tmp->urbIn[i] = ((void*)0);
  }
  kfree(usbduxsub_tmp->urbIn);
  usbduxsub_tmp->urbIn = ((void*)0);
 }
 if (usbduxsub_tmp->urbOut) {
  if (usbduxsub_tmp->ao_cmd_running) {
   usbduxsub_tmp->ao_cmd_running = 0;
   usbduxsub_unlink_OutURBs(usbduxsub_tmp);
  }
  for (i = 0; i < usbduxsub_tmp->numOfOutBuffers; i++) {
   if (usbduxsub_tmp->urbOut[i]->transfer_buffer) {
    kfree(usbduxsub_tmp->
          urbOut[i]->transfer_buffer);
    usbduxsub_tmp->urbOut[i]->transfer_buffer =
        ((void*)0);
   }
   if (usbduxsub_tmp->urbOut[i]) {
    usb_kill_urb(usbduxsub_tmp->urbOut[i]);
    usb_free_urb(usbduxsub_tmp->urbOut[i]);
    usbduxsub_tmp->urbOut[i] = ((void*)0);
   }
  }
  kfree(usbduxsub_tmp->urbOut);
  usbduxsub_tmp->urbOut = ((void*)0);
 }
 if (usbduxsub_tmp->urbPwm) {
  if (usbduxsub_tmp->pwm_cmd_running) {
   usbduxsub_tmp->pwm_cmd_running = 0;
   usbduxsub_unlink_PwmURBs(usbduxsub_tmp);
  }
  kfree(usbduxsub_tmp->urbPwm->transfer_buffer);
  usbduxsub_tmp->urbPwm->transfer_buffer = ((void*)0);
  usb_kill_urb(usbduxsub_tmp->urbPwm);
  usb_free_urb(usbduxsub_tmp->urbPwm);
  usbduxsub_tmp->urbPwm = ((void*)0);
 }
 kfree(usbduxsub_tmp->inBuffer);
 usbduxsub_tmp->inBuffer = ((void*)0);
 kfree(usbduxsub_tmp->insnBuffer);
 usbduxsub_tmp->insnBuffer = ((void*)0);
 kfree(usbduxsub_tmp->inBuffer);
 usbduxsub_tmp->inBuffer = ((void*)0);
 kfree(usbduxsub_tmp->dac_commands);
 usbduxsub_tmp->dac_commands = ((void*)0);
 kfree(usbduxsub_tmp->dux_commands);
 usbduxsub_tmp->dux_commands = ((void*)0);
 usbduxsub_tmp->ai_cmd_running = 0;
 usbduxsub_tmp->ao_cmd_running = 0;
 usbduxsub_tmp->pwm_cmd_running = 0;
}
