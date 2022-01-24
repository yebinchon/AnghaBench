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
struct ip_mc_list {int /*<<< orphan*/  interface; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_mc_list*) ; 

__attribute__((used)) static void FUNC3(struct ip_mc_list *im)
{
	if (FUNC0(&im->refcnt)) {
		FUNC1(im->interface);
		FUNC2(im);
	}
}