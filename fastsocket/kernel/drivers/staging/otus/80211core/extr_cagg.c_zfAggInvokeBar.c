
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct aggBarControl {int tid_info; scalar_t__ compressed_bitmap; scalar_t__ multi_tid; scalar_t__ bar_ack_policy; } ;
struct TYPE_4__ {int tid; } ;
typedef TYPE_1__* TID_TX ;


 int zfAggSendBar (int *,TYPE_1__*,struct aggBarControl*) ;

void zfAggInvokeBar(zdev_t* dev, TID_TX tid_tx)
{
    struct aggBarControl aggBarControl;





    aggBarControl.bar_ack_policy = 0;
    aggBarControl.multi_tid = 0;
    aggBarControl.compressed_bitmap = 0;
    aggBarControl.tid_info = tid_tx->tid;
    zfAggSendBar(dev, tid_tx, &aggBarControl);

    return;

}
