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
struct acm {int /*<<< orphan*/  write_lock; TYPE_1__* wb; } ;
struct TYPE_2__ {scalar_t__ use; } ;

/* Variables and functions */
 int ACM_NW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct acm *acm)
{
	int i, n;
	unsigned long flags;

	n = ACM_NW;
	FUNC0(&acm->write_lock, flags);
	for (i = 0; i < ACM_NW; i++)
		n -= acm->wb[i].use;
	FUNC1(&acm->write_lock, flags);
	return n;
}