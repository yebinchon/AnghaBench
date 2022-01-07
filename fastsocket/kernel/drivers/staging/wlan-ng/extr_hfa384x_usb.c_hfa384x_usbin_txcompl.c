
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wlandevice_t ;
typedef int u16 ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ hfa384x_usbin_t ;


 scalar_t__ HFA384x_TXSTATUS_ISERROR (int ) ;
 int le16_to_cpu (int ) ;
 int prism2sta_ev_tx (int *,int ) ;
 int prism2sta_ev_txexc (int *,int ) ;

__attribute__((used)) static void hfa384x_usbin_txcompl(wlandevice_t *wlandev,
      hfa384x_usbin_t *usbin)
{
 u16 status;

 status = le16_to_cpu(usbin->type);


 if (HFA384x_TXSTATUS_ISERROR(status))
  prism2sta_ev_txexc(wlandev, status);
 else
  prism2sta_ev_tx(wlandev, status);
}
