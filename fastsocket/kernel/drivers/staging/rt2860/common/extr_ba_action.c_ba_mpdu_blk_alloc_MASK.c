#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct reordering_mpdu {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  freelist; } ;
struct TYPE_5__ {TYPE_1__ mpdu_blk_pool; } ;
typedef  TYPE_2__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct reordering_mpdu*,int) ; 
 struct reordering_mpdu* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct reordering_mpdu *FUNC4(PRTMP_ADAPTER pAd)
{
	struct reordering_mpdu *mpdu_blk;

	FUNC0(&pAd->mpdu_blk_pool.lock);
	mpdu_blk = FUNC3(&pAd->mpdu_blk_pool.freelist);
	if (mpdu_blk)
	{
//		blk_count++;
		/* reset mpdu_blk */
		FUNC2(mpdu_blk, sizeof(struct reordering_mpdu));
	}
	FUNC1(&pAd->mpdu_blk_pool.lock);
	return mpdu_blk;
}