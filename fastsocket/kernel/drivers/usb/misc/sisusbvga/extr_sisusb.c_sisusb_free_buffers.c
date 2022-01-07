
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int * ibuf; int ** obuf; } ;


 int NUMOBUFS ;
 int kfree (int *) ;

__attribute__((used)) static void
sisusb_free_buffers(struct sisusb_usb_data *sisusb)
{
 int i;

 for (i = 0; i < NUMOBUFS; i++) {
  if (sisusb->obuf[i]) {
   kfree(sisusb->obuf[i]);
   sisusb->obuf[i] = ((void*)0);
  }
 }
 if (sisusb->ibuf) {
  kfree(sisusb->ibuf);
  sisusb->ibuf = ((void*)0);
 }
}
