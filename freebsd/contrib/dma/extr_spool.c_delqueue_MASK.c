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
struct qitem {int /*<<< orphan*/ * mailf; int /*<<< orphan*/ * queuef; int /*<<< orphan*/  queuefn; int /*<<< orphan*/  mailfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qitem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct qitem *it)
{
	FUNC2(it->mailfn);
	FUNC2(it->queuefn);
	if (it->queuef != NULL)
		FUNC0(it->queuef);
	if (it->mailf != NULL)
		FUNC0(it->mailf);
	FUNC1(it);
}