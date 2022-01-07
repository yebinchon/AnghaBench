
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int numobufs; int * urbstatus; } ;


 int SU_URB_ALLOC ;

__attribute__((used)) static void
sisusb_free_outbuf(struct sisusb_usb_data *sisusb, int index)
{
 if ((index >= 0) && (index < sisusb->numobufs))
  sisusb->urbstatus[index] &= ~SU_URB_ALLOC;
}
