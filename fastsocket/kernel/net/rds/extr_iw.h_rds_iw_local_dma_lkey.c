
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rds_iw_connection {TYPE_3__* i_mr; TYPE_2__* i_cm_id; scalar_t__ i_dma_local_lkey; } ;
struct TYPE_6__ {int lkey; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int local_dma_lkey; } ;



__attribute__((used)) static inline u32 rds_iw_local_dma_lkey(struct rds_iw_connection *ic)
{
 return ic->i_dma_local_lkey ? ic->i_cm_id->device->local_dma_lkey : ic->i_mr->lkey;
}
