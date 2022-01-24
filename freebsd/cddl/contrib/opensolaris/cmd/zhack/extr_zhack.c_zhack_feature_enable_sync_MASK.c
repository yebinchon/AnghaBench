#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fi_flags; int /*<<< orphan*/  fi_guid; } ;
typedef  TYPE_1__ zfeature_info_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_5__ {int /*<<< orphan*/ * dp_spa; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg, dmu_tx_t *tx)
{
	spa_t *spa = FUNC0(tx)->dp_spa;
	zfeature_info_t *feature = arg;

	FUNC1(spa, feature, tx);

	FUNC2(spa, "zhack enable feature", tx,
	    "guid=%s flags=%x",
	    feature->fi_guid, feature->fi_flags);
}