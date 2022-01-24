#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proto {TYPE_2__* twsk_prot; TYPE_1__* rsk_prot; int /*<<< orphan*/ * slab; int /*<<< orphan*/  node; } ;
struct TYPE_4__ {int /*<<< orphan*/ * twsk_slab; int /*<<< orphan*/  twsk_slab_name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * slab; int /*<<< orphan*/  slab_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proto_list_lock ; 
 int /*<<< orphan*/  FUNC3 (struct proto*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct proto *prot)
{
	FUNC4(&proto_list_lock);
	FUNC3(prot);
	FUNC2(&prot->node);
	FUNC5(&proto_list_lock);

	if (prot->slab != NULL) {
		FUNC1(prot->slab);
		prot->slab = NULL;
	}

	if (prot->rsk_prot != NULL && prot->rsk_prot->slab != NULL) {
		FUNC1(prot->rsk_prot->slab);
		FUNC0(prot->rsk_prot->slab_name);
		prot->rsk_prot->slab = NULL;
	}

	if (prot->twsk_prot != NULL && prot->twsk_prot->twsk_slab != NULL) {
		FUNC1(prot->twsk_prot->twsk_slab);
		FUNC0(prot->twsk_prot->twsk_slab_name);
		prot->twsk_prot->twsk_slab = NULL;
	}
}