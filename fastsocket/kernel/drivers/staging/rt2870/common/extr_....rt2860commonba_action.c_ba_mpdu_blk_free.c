
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct reordering_mpdu {int dummy; } ;
struct TYPE_4__ {int lock; int freelist; } ;
struct TYPE_5__ {TYPE_1__ mpdu_blk_pool; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 int ASSERT (struct reordering_mpdu*) ;
 int NdisAcquireSpinLock (int *) ;
 int NdisReleaseSpinLock (int *) ;
 int ba_enqueue (int *,struct reordering_mpdu*) ;

__attribute__((used)) static void ba_mpdu_blk_free(PRTMP_ADAPTER pAd, struct reordering_mpdu *mpdu_blk)
{
 ASSERT(mpdu_blk);

 NdisAcquireSpinLock(&pAd->mpdu_blk_pool.lock);

 ba_enqueue(&pAd->mpdu_blk_pool.freelist, mpdu_blk);
 NdisReleaseSpinLock(&pAd->mpdu_blk_pool.lock);
}
