
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlandevice_t ;
typedef int hfa384x_usbout_t ;


 int prism2sta_ev_alloc (int *) ;

__attribute__((used)) static void hfa384x_usbout_tx(wlandevice_t *wlandev, hfa384x_usbout_t *usbout)
{
 prism2sta_ev_alloc(wlandev);
}
