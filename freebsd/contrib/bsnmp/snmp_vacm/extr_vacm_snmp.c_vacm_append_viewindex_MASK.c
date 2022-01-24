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
typedef  size_t uint32_t ;
typedef  size_t uint ;
struct TYPE_2__ {int len; } ;
struct vacm_view {int* viewname; TYPE_1__ subtree; } ;
struct asn_oid {size_t len; int* subs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct asn_oid*,TYPE_1__*) ; 
 int FUNC1 (int*) ; 

__attribute__((used)) static void
FUNC2(struct asn_oid *oid, uint sub, const struct vacm_view *view)
{
	uint32_t i;

	oid->len = sub + FUNC1(view->viewname) + 1;
	oid->subs[sub] = FUNC1(view->viewname);
	for (i = 1; i <= FUNC1(view->viewname); i++)
		oid->subs[sub + i] = view->viewname[i - 1];

	sub += FUNC1(view->viewname) + 1;
	oid->subs[sub] = view->subtree.len;
	oid->len++;
	FUNC0(oid, &view->subtree);
}