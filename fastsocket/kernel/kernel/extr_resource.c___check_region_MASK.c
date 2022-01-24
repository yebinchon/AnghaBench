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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int EBUSY ; 
 struct resource* FUNC0 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 

int FUNC3(struct resource *parent, resource_size_t start,
			resource_size_t n)
{
	struct resource * res;

	res = FUNC0(parent, start, n, "check-region", 0);
	if (!res)
		return -EBUSY;

	FUNC2(res);
	FUNC1(res);
	return 0;
}