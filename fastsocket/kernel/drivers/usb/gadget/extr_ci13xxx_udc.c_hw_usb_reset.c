
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_ENDPTCOMPLETE ;
 int CAP_ENDPTFLUSH ;
 int CAP_ENDPTPRIME ;
 int CAP_ENDPTSETUPSTAT ;
 scalar_t__ hw_cread (int ,int ) ;
 int hw_cwrite (int ,int ,int ) ;
 int hw_usb_set_address (int ) ;
 int udelay (int) ;

__attribute__((used)) static int hw_usb_reset(void)
{
 hw_usb_set_address(0);


 hw_cwrite(CAP_ENDPTFLUSH, ~0, ~0);


 hw_cwrite(CAP_ENDPTSETUPSTAT, 0, 0);


 hw_cwrite(CAP_ENDPTCOMPLETE, 0, 0);


 while (hw_cread(CAP_ENDPTPRIME, ~0))
  udelay(10);






 return 0;
}
