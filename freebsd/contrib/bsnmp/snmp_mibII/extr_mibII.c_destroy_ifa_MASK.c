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
struct mibifa {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mibifa*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mibifa*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  mibifa_list ; 

__attribute__((used)) static void
FUNC2(struct mibifa *ifa)
{
	FUNC0(&mibifa_list, ifa, link);
	FUNC1(ifa);
}