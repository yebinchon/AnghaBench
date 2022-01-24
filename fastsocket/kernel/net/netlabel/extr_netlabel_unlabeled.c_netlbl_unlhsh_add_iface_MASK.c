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
typedef  size_t u32 ;
struct netlbl_unlhsh_iface {int ifindex; int valid; int /*<<< orphan*/  list; int /*<<< orphan*/  rcu; int /*<<< orphan*/  addr6_list; int /*<<< orphan*/  addr4_list; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct netlbl_unlhsh_iface*) ; 
 struct netlbl_unlhsh_iface* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  netlbl_unlhsh ; 
 int /*<<< orphan*/  netlbl_unlhsh_def ; 
 size_t FUNC5 (int) ; 
 int /*<<< orphan*/  netlbl_unlhsh_lock ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct netlbl_unlhsh_iface*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct netlbl_unlhsh_iface *FUNC11(int ifindex)
{
	u32 bkt;
	struct netlbl_unlhsh_iface *iface;

	iface = FUNC3(sizeof(*iface), GFP_ATOMIC);
	if (iface == NULL)
		return NULL;

	iface->ifindex = ifindex;
	FUNC0(&iface->addr4_list);
	FUNC0(&iface->addr6_list);
	iface->valid = 1;
	FUNC1(&iface->rcu);

	FUNC9(&netlbl_unlhsh_lock);
	if (ifindex > 0) {
		bkt = FUNC5(ifindex);
		if (FUNC6(ifindex) != NULL)
			goto add_iface_failure;
		FUNC4(&iface->list,
				  &FUNC8(netlbl_unlhsh)->tbl[bkt]);
	} else {
		FUNC0(&iface->list);
		if (FUNC8(netlbl_unlhsh_def) != NULL)
			goto add_iface_failure;
		FUNC7(netlbl_unlhsh_def, iface);
	}
	FUNC10(&netlbl_unlhsh_lock);

	return iface;

add_iface_failure:
	FUNC10(&netlbl_unlhsh_lock);
	FUNC2(iface);
	return NULL;
}