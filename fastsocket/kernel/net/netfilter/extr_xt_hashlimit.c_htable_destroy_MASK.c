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
struct xt_hashlimit_htable {scalar_t__ family; TYPE_1__* pde; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ NFPROTO_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hashlimit_procdir4 ; 
 int /*<<< orphan*/  hashlimit_procdir6 ; 
 int /*<<< orphan*/  FUNC1 (struct xt_hashlimit_htable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  select_all ; 
 int /*<<< orphan*/  FUNC3 (struct xt_hashlimit_htable*) ; 

__attribute__((used)) static void FUNC4(struct xt_hashlimit_htable *hinfo)
{
	FUNC0(&hinfo->timer);

	/* remove proc entry */
	FUNC2(hinfo->pde->name,
			  hinfo->family == NFPROTO_IPV4 ? hashlimit_procdir4 :
						     hashlimit_procdir6);
	FUNC1(hinfo, select_all);
	FUNC3(hinfo);
}