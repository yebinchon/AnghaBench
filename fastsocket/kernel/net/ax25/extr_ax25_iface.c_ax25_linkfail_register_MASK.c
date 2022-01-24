#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ax25_linkfail {int /*<<< orphan*/  lf_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ax25_linkfail_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  linkfail_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ax25_linkfail *lf)
{
	FUNC1(&linkfail_lock);
	FUNC0(&lf->lf_node, &ax25_linkfail_list);
	FUNC2(&linkfail_lock);
}