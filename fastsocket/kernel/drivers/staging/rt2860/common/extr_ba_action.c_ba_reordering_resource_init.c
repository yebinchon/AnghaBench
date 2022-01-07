
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct reordering_mpdu {int dummy; } ;
struct reordering_list {scalar_t__ qlen; int * next; } ;
typedef int UINT32 ;
struct TYPE_5__ {int * mem; struct reordering_list freelist; int lock; } ;
struct TYPE_6__ {TYPE_1__ mpdu_blk_pool; } ;
typedef int * PUCHAR ;
typedef TYPE_2__* PRTMP_ADAPTER ;
typedef int BOOLEAN ;


 int DBGPRINT (int ,char*) ;
 int FALSE ;
 int NdisAllocateSpinLock (int *) ;
 int NdisZeroMemory (struct reordering_mpdu*,int) ;
 int RT_DEBUG_ERROR ;
 int RT_DEBUG_TRACE ;
 int TRUE ;
 int ba_enqueue (struct reordering_list*,struct reordering_mpdu*) ;
 int os_alloc_mem (TYPE_2__*,int **,int) ;

BOOLEAN ba_reordering_resource_init(PRTMP_ADAPTER pAd, int num)
{
 int i;
 PUCHAR mem;
 struct reordering_mpdu *mpdu_blk;
 struct reordering_list *freelist;


 NdisAllocateSpinLock(&pAd->mpdu_blk_pool.lock);


 freelist = &pAd->mpdu_blk_pool.freelist;
 freelist->next = ((void*)0);
 freelist->qlen = 0;

 DBGPRINT(RT_DEBUG_TRACE, ("Allocate %d memory for BA reordering\n", (UINT32)(num*sizeof(struct reordering_mpdu))));


 os_alloc_mem(pAd, (PUCHAR *)&mem, (num*sizeof(struct reordering_mpdu)));

 pAd->mpdu_blk_pool.mem = mem;

 if (mem == ((void*)0))
 {
  DBGPRINT(RT_DEBUG_ERROR, ("Can't Allocate Memory for BA Reordering\n"));
  return(FALSE);
 }


 for (i=0; i<num; i++)
 {

  mpdu_blk = (struct reordering_mpdu *) mem;

  NdisZeroMemory(mpdu_blk, sizeof(struct reordering_mpdu));

  mem += sizeof(struct reordering_mpdu);

  ba_enqueue(freelist, mpdu_blk);
 }

 return(TRUE);
}
