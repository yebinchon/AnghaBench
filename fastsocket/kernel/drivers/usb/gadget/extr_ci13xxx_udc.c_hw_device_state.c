
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAP_ENDPTLISTADDR ;
 int CAP_USBCMD ;
 int CAP_USBINTR ;
 int USBCMD_RS ;
 int USBi_PCI ;
 int USBi_SLI ;
 int USBi_UEI ;
 int USBi_UI ;
 int USBi_URI ;
 int hw_cwrite (int ,int,int) ;

__attribute__((used)) static int hw_device_state(u32 dma)
{
 if (dma) {
  hw_cwrite(CAP_ENDPTLISTADDR, ~0, dma);

  hw_cwrite(CAP_USBINTR, ~0,
        USBi_UI|USBi_UEI|USBi_PCI|USBi_URI|USBi_SLI);
  hw_cwrite(CAP_USBCMD, USBCMD_RS, USBCMD_RS);
 } else {
  hw_cwrite(CAP_USBCMD, USBCMD_RS, 0);
  hw_cwrite(CAP_USBINTR, ~0, 0);
 }
 return 0;
}
