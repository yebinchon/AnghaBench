
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wlandevice_t ;
struct TYPE_7__ {int framelen; } ;
struct TYPE_5__ {TYPE_3__ info; } ;
struct TYPE_6__ {TYPE_1__ infofrm; } ;
typedef TYPE_2__ hfa384x_usbin_t ;


 int le16_to_cpu (int ) ;
 int prism2sta_ev_info (int *,TYPE_3__*) ;

__attribute__((used)) static void hfa384x_usbin_info(wlandevice_t *wlandev, hfa384x_usbin_t *usbin)
{
 usbin->infofrm.info.framelen =
     le16_to_cpu(usbin->infofrm.info.framelen);
 prism2sta_ev_info(wlandev, &usbin->infofrm.info);
}
