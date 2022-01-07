
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viawget_hostapd_param {int sta_addr; } ;
typedef int UINT ;
typedef int PSDevice ;


 scalar_t__ BSSbIsSTAInNodeDB (int ,int ,int *) ;
 int BSSvRemoveOneNode (int ,int ) ;
 int ENOENT ;

__attribute__((used)) static int hostap_remove_sta(PSDevice pDevice,
         struct viawget_hostapd_param *param)
{
 UINT uNodeIndex;


    if (BSSbIsSTAInNodeDB(pDevice, param->sta_addr, &uNodeIndex)) {
        BSSvRemoveOneNode(pDevice, uNodeIndex);
    }
    else {
        return -ENOENT;
    }
 return 0;
}
