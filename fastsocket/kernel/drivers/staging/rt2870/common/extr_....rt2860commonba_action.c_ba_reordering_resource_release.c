
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct reordering_mpdu {int pPacket; } ;
struct TYPE_14__ {scalar_t__ qlen; } ;
struct TYPE_13__ {TYPE_3__* BARecEntry; } ;
struct TYPE_12__ {scalar_t__ REC_BA_Status; TYPE_7__ list; } ;
struct TYPE_10__ {int lock; int mem; } ;
struct TYPE_11__ {TYPE_1__ mpdu_blk_pool; int BATabLock; TYPE_4__ BATable; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;
typedef TYPE_3__* PBA_REC_ENTRY ;
typedef TYPE_4__ BA_TABLE ;


 int ASSERT (int) ;
 int MAX_LEN_OF_BA_REC_TABLE ;
 int NDIS_STATUS_FAILURE ;
 int NdisAcquireSpinLock (int *) ;
 int NdisReleaseSpinLock (int *) ;
 int RELEASE_NDIS_PACKET (TYPE_2__*,int,int ) ;
 scalar_t__ Recipient_NONE ;
 int ba_mpdu_blk_free (TYPE_2__*,struct reordering_mpdu*) ;
 struct reordering_mpdu* ba_reordering_mpdu_dequeue (TYPE_7__*) ;
 int os_free_mem (TYPE_2__*,int ) ;

void ba_reordering_resource_release(PRTMP_ADAPTER pAd)
{
 BA_TABLE *Tab;
 PBA_REC_ENTRY pBAEntry;
 struct reordering_mpdu *mpdu_blk;
 int i;

 Tab = &pAd->BATable;


 NdisAcquireSpinLock(&pAd->BATabLock);
 for (i = 0; i < MAX_LEN_OF_BA_REC_TABLE; i++)
 {
  pBAEntry = &Tab->BARecEntry[i];
  if (pBAEntry->REC_BA_Status != Recipient_NONE)
  {
   while ((mpdu_blk = ba_reordering_mpdu_dequeue(&pBAEntry->list)))
   {
    ASSERT(mpdu_blk->pPacket);
    RELEASE_NDIS_PACKET(pAd, mpdu_blk->pPacket, NDIS_STATUS_FAILURE);
    ba_mpdu_blk_free(pAd, mpdu_blk);
   }
  }
 }
 NdisReleaseSpinLock(&pAd->BATabLock);

 ASSERT(pBAEntry->list.qlen == 0);

 NdisAcquireSpinLock(&pAd->mpdu_blk_pool.lock);
 os_free_mem(pAd, pAd->mpdu_blk_pool.mem);
 NdisReleaseSpinLock(&pAd->mpdu_blk_pool.lock);
}
