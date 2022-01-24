#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct reordering_mpdu {int dummy; } ;
struct reordering_list {scalar_t__ qlen; int /*<<< orphan*/ * next; } ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_5__ {int /*<<< orphan*/ * mem; struct reordering_list freelist; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {TYPE_1__ mpdu_blk_pool; } ;
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  TYPE_2__* PRTMP_ADAPTER ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct reordering_mpdu*,int) ; 
 int /*<<< orphan*/  RT_DEBUG_ERROR ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct reordering_list*,struct reordering_mpdu*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ **,int) ; 

BOOLEAN FUNC5(PRTMP_ADAPTER pAd, int num)
{
	int     i;
	PUCHAR  mem;
	struct reordering_mpdu *mpdu_blk;
	struct reordering_list *freelist;

	/* allocate spinlock */
	FUNC1(&pAd->mpdu_blk_pool.lock);

	/* initialize freelist */
	freelist = &pAd->mpdu_blk_pool.freelist;
	freelist->next = NULL;
	freelist->qlen = 0;

	FUNC0(RT_DEBUG_TRACE, ("Allocate %d memory for BA reordering\n", (UINT32)(num*sizeof(struct reordering_mpdu))));

	/* allocate number of mpdu_blk memory */
	FUNC4(pAd, (PUCHAR *)&mem, (num*sizeof(struct reordering_mpdu)));

	pAd->mpdu_blk_pool.mem = mem;

	if (mem == NULL)
	{
		FUNC0(RT_DEBUG_ERROR, ("Can't Allocate Memory for BA Reordering\n"));
		return(FALSE);
	}

	/* build mpdu_blk free list */
	for (i=0; i<num; i++)
	{
		/* get mpdu_blk */
		mpdu_blk = (struct reordering_mpdu *) mem;
		/* initial mpdu_blk */
		FUNC2(mpdu_blk, sizeof(struct reordering_mpdu));
		/* next mpdu_blk */
		mem += sizeof(struct reordering_mpdu);
		/* insert mpdu_blk into freelist */
		FUNC3(freelist, mpdu_blk);
	}

	return(TRUE);
}