
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int ba_end; scalar_t__ ampdu; } ;
struct TYPE_10__ {TYPE_2__ mac; } ;
struct TYPE_8__ {int i3e; } ;
struct TYPE_11__ {TYPE_3__ hdr; TYPE_1__ data; } ;
struct TYPE_13__ {unsigned int queue; } ;
struct carl9170_tx_superframe {TYPE_4__ f; TYPE_6__ s; } ;
struct TYPE_12__ {struct carl9170_tx_superframe** ampdu_prev; } ;
struct TYPE_14__ {TYPE_5__ wlan; } ;


 TYPE_7__ fw ;
 int same_aggr (int *,int *) ;
 int wlan_tx_ampdu_end (unsigned int) ;

__attribute__((used)) static void wlan_tx_ampdu(struct carl9170_tx_superframe *super)
{
 unsigned int qidx = super->s.queue;
 struct carl9170_tx_superframe *ht_prev = fw.wlan.ampdu_prev[qidx];

 if (super->f.hdr.mac.ampdu) {
  if (ht_prev &&
      !same_aggr(&super->f.data.i3e, &ht_prev->f.data.i3e))
   ht_prev->f.hdr.mac.ba_end = 1;
  else
   super->f.hdr.mac.ba_end = 0;

  fw.wlan.ampdu_prev[qidx] = super;
 } else {
  wlan_tx_ampdu_end(qidx);
 }
}
