
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ skb; } ;
struct TYPE_4__ {TYPE_2__* sRxDFCB; } ;
typedef TYPE_1__* PSDevice ;
typedef TYPE_2__* PSDeFragControlBlock ;


 int CB_MAX_RX_FRAG ;
 int dev_kfree_skb (scalar_t__) ;

__attribute__((used)) static void device_free_frag_bufs(PSDevice pDevice) {
    PSDeFragControlBlock pDeF;
    int i;

    for (i = 0; i < CB_MAX_RX_FRAG; i++) {

        pDeF = &(pDevice->sRxDFCB[i]);

        if (pDeF->skb)
            dev_kfree_skb(pDeF->skb);
    }
}
