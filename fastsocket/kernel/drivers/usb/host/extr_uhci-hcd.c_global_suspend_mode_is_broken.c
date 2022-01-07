
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int rh_numports; scalar_t__ io_addr; } ;


 int DMI_BOARD_NAME ;
 scalar_t__ USBPORTSC1 ;
 int USBPORTSC_CCS ;
 char* dmi_get_system_info (int ) ;
 int inw (scalar_t__) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int global_suspend_mode_is_broken(struct uhci_hcd *uhci)
{
 int port;
 const char *sys_info;
 static char bad_Asus_board[] = "A7V8X";





 sys_info = dmi_get_system_info(DMI_BOARD_NAME);
 if (sys_info && !strcmp(sys_info, bad_Asus_board)) {
  for (port = 0; port < uhci->rh_numports; ++port) {
   if (inw(uhci->io_addr + USBPORTSC1 + port * 2) &
     USBPORTSC_CCS)
    return 1;
  }
 }

 return 0;
}
