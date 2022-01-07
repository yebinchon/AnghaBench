
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ priv; } ;
typedef TYPE_3__ wlandevice_t ;
struct TYPE_11__ {int link_bh; int link_status_new; } ;
typedef TYPE_4__ hfa384x_t ;
struct TYPE_8__ {int linkstatus; } ;
struct TYPE_9__ {TYPE_1__ linkstatus; } ;
struct TYPE_12__ {TYPE_2__ info; } ;
typedef TYPE_5__ hfa384x_InfFrame_t ;


 int le16_to_cpu (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
         hfa384x_InfFrame_t *inf)
{
 hfa384x_t *hw = (hfa384x_t *) wlandev->priv;

 hw->link_status_new = le16_to_cpu(inf->info.linkstatus.linkstatus);

 schedule_work(&hw->link_bh);

 return;
}
