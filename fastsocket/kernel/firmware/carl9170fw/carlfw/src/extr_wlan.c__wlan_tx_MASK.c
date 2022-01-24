#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dma_desc {int dummy; } ;
struct TYPE_6__ {int ampdu_density; int ampdu_factor; int /*<<< orphan*/  ampdu_commit_factor; int /*<<< orphan*/  ampdu_commit_density; int /*<<< orphan*/  vif_id; int /*<<< orphan*/  assign_seq; } ;
struct TYPE_4__ {int /*<<< orphan*/  i3e; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct carl9170_tx_superframe {TYPE_3__ s; TYPE_2__ f; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_MAC_AMPDU_DENSITY ; 
 int /*<<< orphan*/  AR9170_MAC_AMPDU_FACTOR ; 
 int /*<<< orphan*/  AR9170_MAC_REG_AMPDU_DENSITY ; 
 int /*<<< orphan*/  AR9170_MAC_REG_AMPDU_FACTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct carl9170_tx_superframe* FUNC2 (struct dma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dma_desc *desc)
{
	struct carl9170_tx_superframe *super = FUNC2(desc);

	if (FUNC4(super->s.assign_seq))
		FUNC5(&super->f.data.i3e, super->s.vif_id);

	if (FUNC4(super->s.ampdu_commit_density)) {
		FUNC3(AR9170_MAC_REG_AMPDU_DENSITY,
		    FUNC0(AR9170_MAC_AMPDU_DENSITY,
			    FUNC1(AR9170_MAC_REG_AMPDU_DENSITY),
			    super->s.ampdu_density));
	}

	if (FUNC4(super->s.ampdu_commit_factor)) {
		FUNC3(AR9170_MAC_REG_AMPDU_FACTOR,
		    FUNC0(AR9170_MAC_AMPDU_FACTOR,
			    FUNC1(AR9170_MAC_REG_AMPDU_FACTOR),
			    8 << super->s.ampdu_factor));
	}
}