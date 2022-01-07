
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct tfrc_loss_hist {scalar_t__ const counter; TYPE_1__** ring; } ;
struct TYPE_2__ {int li_length; } ;


 int BUG_ON (int) ;
 size_t LIH_INDEX (scalar_t__ const) ;

__attribute__((used)) static inline u32 tfrc_lh_get_interval(struct tfrc_loss_hist *lh, const u8 i)
{
 BUG_ON(i >= lh->counter);
 return lh->ring[LIH_INDEX(lh->counter - i - 1)]->li_length;
}
