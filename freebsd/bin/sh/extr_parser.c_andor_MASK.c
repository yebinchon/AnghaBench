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
typedef  union node {int dummy; } node ;

/* Variables and functions */
 int NAND ; 
 int NOR ; 
 int TAND ; 
 int TOR ; 
 union node* FUNC0 (int,union node*,union node*) ; 
 union node* FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  tokpushback ; 

__attribute__((used)) static union node *
FUNC3(void)
{
	union node *n;
	int t;

	n = FUNC1();
	for (;;) {
		if ((t = FUNC2()) == TAND) {
			t = NAND;
		} else if (t == TOR) {
			t = NOR;
		} else {
			tokpushback++;
			return n;
		}
		n = FUNC0(t, n, FUNC1());
	}
}