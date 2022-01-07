
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dma_desc {int dummy; } ;
struct TYPE_6__ {int ampdu_density; int ampdu_factor; int ampdu_commit_factor; int ampdu_commit_density; int vif_id; int assign_seq; } ;
struct TYPE_4__ {int i3e; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct carl9170_tx_superframe {TYPE_3__ s; TYPE_2__ f; } ;


 int AR9170_MAC_AMPDU_DENSITY ;
 int AR9170_MAC_AMPDU_FACTOR ;
 int AR9170_MAC_REG_AMPDU_DENSITY ;
 int AR9170_MAC_REG_AMPDU_FACTOR ;
 int MOD_VAL (int ,int ,int) ;
 int get (int ) ;
 struct carl9170_tx_superframe* get_super (struct dma_desc*) ;
 int set (int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int wlan_assign_seq (int *,int ) ;

__attribute__((used)) static void _wlan_tx(struct dma_desc *desc)
{
 struct carl9170_tx_superframe *super = get_super(desc);

 if (unlikely(super->s.assign_seq))
  wlan_assign_seq(&super->f.data.i3e, super->s.vif_id);

 if (unlikely(super->s.ampdu_commit_density)) {
  set(AR9170_MAC_REG_AMPDU_DENSITY,
      MOD_VAL(AR9170_MAC_AMPDU_DENSITY,
       get(AR9170_MAC_REG_AMPDU_DENSITY),
       super->s.ampdu_density));
 }

 if (unlikely(super->s.ampdu_commit_factor)) {
  set(AR9170_MAC_REG_AMPDU_FACTOR,
      MOD_VAL(AR9170_MAC_AMPDU_FACTOR,
       get(AR9170_MAC_REG_AMPDU_FACTOR),
       8 << super->s.ampdu_factor));
 }
}
