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
struct ima_iint_cache {unsigned long flags; int /*<<< orphan*/  refcount; scalar_t__ opencount; scalar_t__ writecount; scalar_t__ readcount; int /*<<< orphan*/  mutex; scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ima_iint_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *foo)
{
	struct ima_iint_cache *iint = foo;

	FUNC1(iint, 0, sizeof *iint);
	iint->version = 0;
	iint->flags = 0UL;
	FUNC2(&iint->mutex);
	iint->readcount = 0;
	iint->writecount = 0;
	iint->opencount = 0;
	FUNC0(&iint->refcount, 1);
}