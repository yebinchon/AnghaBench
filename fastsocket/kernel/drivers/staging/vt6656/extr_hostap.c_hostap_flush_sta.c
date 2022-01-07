
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uAssocCount; } ;
typedef TYPE_1__* PSDevice ;


 int BSSvClearNodeDBTable (TYPE_1__*,int) ;

__attribute__((used)) static void hostap_flush_sta(PSDevice pDevice)
{

    BSSvClearNodeDBTable(pDevice, 1);
    pDevice->uAssocCount = 0;

    return;
}
