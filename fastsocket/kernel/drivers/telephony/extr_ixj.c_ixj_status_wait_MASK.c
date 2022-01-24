#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  statuswaitfail; int /*<<< orphan*/  statuswait; } ;
typedef  TYPE_1__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int hertz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 scalar_t__ FUNC2 (int,unsigned long) ; 

__attribute__((used)) static int FUNC3(IXJ *j)
{
	unsigned long jif;

	jif = jiffies + ((60 * hertz) / 100);
	while (!FUNC0(j)) {
		FUNC1(j->statuswait);
		if (FUNC2(jiffies, jif)) {
			FUNC1(j->statuswaitfail);
			return -1;
		}
	}
	return 0;
}