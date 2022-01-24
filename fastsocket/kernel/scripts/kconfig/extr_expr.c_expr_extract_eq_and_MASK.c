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
struct expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_AND ; 
 struct expr* FUNC0 (struct expr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct expr**,struct expr**,struct expr**) ; 

struct expr *FUNC2(struct expr **ep1, struct expr **ep2)
{
	struct expr *tmp = NULL;
	FUNC1(E_AND, &tmp, ep1, ep2);
	if (tmp) {
		*ep1 = FUNC0(*ep1);
		*ep2 = FUNC0(*ep2);
	}
	return tmp;
}