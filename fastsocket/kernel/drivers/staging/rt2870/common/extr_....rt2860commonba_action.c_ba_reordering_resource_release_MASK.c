#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct reordering_mpdu {int pPacket; } ;
struct TYPE_14__ {scalar_t__ qlen; } ;
struct TYPE_13__ {TYPE_3__* BARecEntry; } ;
struct TYPE_12__ {scalar_t__ REC_BA_Status; TYPE_7__ list; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mem; } ;
struct TYPE_11__ {TYPE_1__ mpdu_blk_pool; int /*<<< orphan*/  BATabLock; TYPE_4__ BATable; } ;
typedef  TYPE_2__* PRTMP_ADAPTER ;
typedef  TYPE_3__* PBA_REC_ENTRY ;
typedef  TYPE_4__ BA_TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_LEN_OF_BA_REC_TABLE ; 
 int /*<<< orphan*/  NDIS_STATUS_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ Recipient_NONE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct reordering_mpdu*) ; 
 struct reordering_mpdu* FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC7(PRTMP_ADAPTER pAd)
{
	BA_TABLE        *Tab;
	PBA_REC_ENTRY   pBAEntry;
	struct reordering_mpdu *mpdu_blk;
	int i;

	Tab = &pAd->BATable;

	/* I.  release all pending reordering packet */
	FUNC1(&pAd->BATabLock);
	for (i = 0; i < MAX_LEN_OF_BA_REC_TABLE; i++)
	{
		pBAEntry = &Tab->BARecEntry[i];
		if (pBAEntry->REC_BA_Status != Recipient_NONE)
		{
			while ((mpdu_blk = FUNC5(&pBAEntry->list)))
			{
				FUNC0(mpdu_blk->pPacket);
				FUNC3(pAd, mpdu_blk->pPacket, NDIS_STATUS_FAILURE);
				FUNC4(pAd, mpdu_blk);
			}
		}
	}
	FUNC2(&pAd->BATabLock);

	FUNC0(pBAEntry->list.qlen == 0);
	/* II. free memory of reordering mpdu table */
	FUNC1(&pAd->mpdu_blk_pool.lock);
	FUNC6(pAd, pAd->mpdu_blk_pool.mem);
	FUNC2(&pAd->mpdu_blk_pool.lock);
}