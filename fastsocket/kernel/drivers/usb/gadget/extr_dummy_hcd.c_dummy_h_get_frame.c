
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int dummy_g_get_frame (int *) ;

__attribute__((used)) static int dummy_h_get_frame (struct usb_hcd *hcd)
{
 return dummy_g_get_frame (((void*)0));
}
