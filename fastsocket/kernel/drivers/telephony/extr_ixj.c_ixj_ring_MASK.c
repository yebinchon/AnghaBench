#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ringing; } ;
struct TYPE_8__ {char maxrings; TYPE_1__ flags; } ;
typedef  TYPE_2__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int hertz ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,unsigned long) ; 

__attribute__((used)) static int FUNC7(IXJ *j)
{
	char cntr;
	unsigned long jif;

	j->flags.ringing = 1;
	if (FUNC0(j) & 1) {
		FUNC1(j);
		j->flags.ringing = 0;
		return 1;
	}
	for (cntr = 0; cntr < j->maxrings; cntr++) {
		jif = jiffies + (1 * hertz);
		FUNC2(j);
		while (FUNC6(jiffies, jif)) {
			if (FUNC0(j) & 1) {
				FUNC1(j);
				j->flags.ringing = 0;
				return 1;
			}
			FUNC4(1);
			if (FUNC5(current))
				break;
		}
		jif = jiffies + (3 * hertz);
		FUNC1(j);
		while (FUNC6(jiffies, jif)) {
			if (FUNC0(j) & 1) {
				FUNC3(10);
				if (FUNC0(j) & 1) {
					j->flags.ringing = 0;
					return 1;
				}
			}
			FUNC4(1);
			if (FUNC5(current))
				break;
		}
	}
	FUNC1(j);
	j->flags.ringing = 0;
	return 0;
}