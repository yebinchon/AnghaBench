
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int inactive_sec; } ;
struct TYPE_9__ {TYPE_1__ get_info_sta; } ;
struct viawget_hostapd_param {TYPE_2__ u; int sta_addr; } ;
typedef size_t UINT ;
struct TYPE_11__ {TYPE_3__* sNodeDBTable; } ;
struct TYPE_12__ {TYPE_4__ sMgmtObj; } ;
struct TYPE_10__ {int ulLastRxJiffer; } ;
typedef TYPE_4__* PSMgmtObject ;
typedef TYPE_5__* PSDevice ;


 scalar_t__ BSSbIsSTAInNodeDB (TYPE_5__*,int ,size_t*) ;
 int ENOENT ;
 int HZ ;
 int jiffies ;

__attribute__((used)) static int hostap_get_info_sta(PSDevice pDevice,
           struct viawget_hostapd_param *param)
{
    PSMgmtObject pMgmt = &(pDevice->sMgmtObj);
 UINT uNodeIndex;

    if (BSSbIsSTAInNodeDB(pDevice, param->sta_addr, &uNodeIndex)) {
     param->u.get_info_sta.inactive_sec =
         (jiffies - pMgmt->sNodeDBTable[uNodeIndex].ulLastRxJiffer) / HZ;


 }
 else {
     return -ENOENT;
 }

 return 0;
}
