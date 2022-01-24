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
struct srcimp {int /*<<< orphan*/  rsc; int /*<<< orphan*/ * mgr; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * imappers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct srcimp *srcimp)
{
	if (NULL != srcimp->imappers) {
		FUNC0(srcimp->imappers);
		srcimp->imappers = NULL;
	}
	srcimp->ops = NULL;
	srcimp->mgr = NULL;
	FUNC1(&srcimp->rsc);

	return 0;
}