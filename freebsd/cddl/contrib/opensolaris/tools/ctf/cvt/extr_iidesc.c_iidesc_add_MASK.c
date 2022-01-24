#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  iidesc_t ;
struct TYPE_3__ {int /*<<< orphan*/ * iif_ret; int /*<<< orphan*/ * iif_tgt; } ;
typedef  TYPE_1__ iidesc_find_t ;
typedef  int /*<<< orphan*/  hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  iidesc_cmp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(hash_t *hash, iidesc_t *new)
{
	iidesc_find_t find;

	find.iif_tgt = new;
	find.iif_ret = NULL;

	(void) FUNC2(hash, new, iidesc_cmp, &find);

	if (find.iif_ret != NULL) {
		iidesc_t *old = find.iif_ret;
		iidesc_t tmp;
		/* replacing existing one */
		FUNC0(old, &tmp, sizeof (tmp));
		FUNC0(new, old, sizeof (*old));
		FUNC0(&tmp, new, sizeof (*new));

		FUNC3(new, NULL);
		return;
	}

	FUNC1(hash, new);
}