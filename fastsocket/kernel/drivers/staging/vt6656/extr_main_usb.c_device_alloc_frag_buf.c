
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {TYPE_5__* skb; } ;
struct TYPE_7__ {int dev; scalar_t__ rx_buf_sz; } ;
typedef TYPE_1__* PSDevice ;
typedef TYPE_2__* PSDeFragControlBlock ;
typedef int BOOL ;


 int ASSERT (TYPE_5__*) ;
 int FALSE ;
 int TRUE ;
 TYPE_5__* dev_alloc_skb (int) ;

BOOL device_alloc_frag_buf(PSDevice pDevice, PSDeFragControlBlock pDeF) {

    pDeF->skb = dev_alloc_skb((int)pDevice->rx_buf_sz);
    if (pDeF->skb == ((void*)0))
        return FALSE;
    ASSERT(pDeF->skb);
    pDeF->skb->dev = pDevice->dev;

    return TRUE;
}
