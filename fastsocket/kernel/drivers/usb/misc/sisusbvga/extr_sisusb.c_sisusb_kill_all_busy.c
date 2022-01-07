
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int numobufs; int* urbstatus; int * sisurbout; } ;


 int SU_URB_BUSY ;
 scalar_t__ sisusb_all_free (struct sisusb_usb_data*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void
sisusb_kill_all_busy(struct sisusb_usb_data *sisusb)
{
 int i;

 if (sisusb_all_free(sisusb))
  return;

 for (i = 0; i < sisusb->numobufs; i++) {

  if (sisusb->urbstatus[i] & SU_URB_BUSY)
   usb_kill_urb(sisusb->sisurbout[i]);

 }
}
