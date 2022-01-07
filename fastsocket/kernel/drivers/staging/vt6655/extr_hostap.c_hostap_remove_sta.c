
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct viawget_hostapd_param {int sta_addr; } ;
typedef int UINT ;
struct TYPE_4__ {int pMgmt; } ;
typedef TYPE_1__* PSDevice ;


 scalar_t__ BSSDBbIsSTAInNodeDB (int ,int ,int *) ;
 int BSSvRemoveOneNode (TYPE_1__*,int ) ;
 int ENOENT ;

__attribute__((used)) static int hostap_remove_sta(PSDevice pDevice,
         struct viawget_hostapd_param *param)
{
 UINT uNodeIndex;


    if (BSSDBbIsSTAInNodeDB(pDevice->pMgmt, param->sta_addr, &uNodeIndex)) {
        BSSvRemoveOneNode(pDevice, uNodeIndex);
    }
    else {
        return -ENOENT;
    }
 return 0;
}
