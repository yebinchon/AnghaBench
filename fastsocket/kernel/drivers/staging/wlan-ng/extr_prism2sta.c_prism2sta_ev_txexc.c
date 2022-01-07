
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlandevice_t ;
typedef int u16 ;


 int pr_debug (char*,int ) ;

void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status)
{
 pr_debug("TxExc status=0x%x.\n", status);

 return;
}
