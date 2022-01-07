
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfrc_loss_interval {int dummy; } ;
struct tfrc_loss_hist {int counter; struct tfrc_loss_interval** ring; } ;


 int GFP_ATOMIC ;
 size_t LIH_INDEX (int ) ;
 struct tfrc_loss_interval* kmem_cache_alloc (int ,int ) ;
 int tfrc_lh_slab ;

__attribute__((used)) static struct tfrc_loss_interval *tfrc_lh_demand_next(struct tfrc_loss_hist *lh)
{
 if (lh->ring[LIH_INDEX(lh->counter)] == ((void*)0))
  lh->ring[LIH_INDEX(lh->counter)] = kmem_cache_alloc(tfrc_lh_slab,
            GFP_ATOMIC);
 return lh->ring[LIH_INDEX(lh->counter)];
}
