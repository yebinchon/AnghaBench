
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


 int NdisAcquireSpinLock (int *) ;
 int NdisReleaseSpinLock (int *) ;
 int NdisZeroMemory (struct reordering_mpdu*,int) ;
 struct reordering_mpdu* ba_dequeue (int *) ;

__attribute__((used)) static struct reordering_mpdu *ba_mpdu_blk_alloc(PRTMP_ADAPTER pAd)
{
 struct reordering_mpdu *mpdu_blk;

 NdisAcquireSpinLock(&pAd->mpdu_blk_pool.lock);
 mpdu_blk = ba_dequeue(&pAd->mpdu_blk_pool.freelist);
 if (mpdu_blk)
 {


  NdisZeroMemory(mpdu_blk, sizeof(struct reordering_mpdu));
 }
 NdisReleaseSpinLock(&pAd->mpdu_blk_pool.lock);
 return mpdu_blk;
}
