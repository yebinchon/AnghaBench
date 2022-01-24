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
struct ip_vs_dest {int /*<<< orphan*/  d_list; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; int /*<<< orphan*/  af; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ip_vs_rtable ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ip_vs_dest *dest)
{
	unsigned hash;

	if (!FUNC2(&dest->d_list)) {
		return 0;
	}

	/*
	 *	Hash by proto,addr,port,
	 *	which are the parameters of the real service.
	 */
	hash = FUNC0(dest->af, &dest->addr, dest->port);

	FUNC1(&dest->d_list, &ip_vs_rtable[hash]);

	return 1;
}