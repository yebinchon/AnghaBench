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
struct ip_vs_dest {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  n_list; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; int /*<<< orphan*/  af; TYPE_1__* svc; int /*<<< orphan*/  stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __ip_vs_rs_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip_vs_dest_trash ; 
 int /*<<< orphan*/  FUNC6 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC9 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct ip_vs_dest *dest)
{
	FUNC7(&dest->stats);

	/*
	 *  Remove it from the d-linked list with the real services.
	 */
	FUNC12(&__ip_vs_rs_lock);
	FUNC8(dest);
	FUNC13(&__ip_vs_rs_lock);

	/*
	 *  Decrease the refcnt of the dest, and free the dest
	 *  if nobody refers to it (refcnt=0). Otherwise, throw
	 *  the destination into the trash.
	 */
	if (FUNC3(&dest->refcnt)) {
		FUNC6(dest);
		/* simply decrease svc->refcnt here, let the caller check
		   and release the service if nobody refers to it.
		   Only user context can release destination and service,
		   and only one user context can update virtual service at a
		   time, so the operation here is OK */
		FUNC2(&dest->svc->refcnt);
		FUNC9(dest);
	} else {
		FUNC1(3, "Moving dest %s:%u into trash, "
			      "dest->refcnt=%d\n",
			      FUNC0(dest->af, &dest->addr),
			      FUNC11(dest->port),
			      FUNC5(&dest->refcnt));
		FUNC10(&dest->n_list, &ip_vs_dest_trash);
		FUNC4(&dest->refcnt);
	}
}