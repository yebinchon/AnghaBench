#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tid_ampdu_tx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * tid_tx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct tid_ampdu_tx* FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline struct tid_ampdu_tx *
FUNC2(struct sta_info *sta, int tid)
{
	return FUNC1(sta->ampdu_mlme.tid_tx[tid],
					 FUNC0(&sta->lock) ||
					 FUNC0(&sta->ampdu_mlme.mtx));
}