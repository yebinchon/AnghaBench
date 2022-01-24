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
struct genl_multicast_group {int dummy; } ;
struct genl_family {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct genl_family*,struct genl_multicast_group*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct genl_family *family,
			      struct genl_multicast_group *grp)
{
	FUNC1();
	FUNC0(family, grp);
	FUNC2();
}