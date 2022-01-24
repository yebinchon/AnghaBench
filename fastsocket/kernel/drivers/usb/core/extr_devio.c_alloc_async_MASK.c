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
struct async {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct async*) ; 
 struct async* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct async *FUNC3(unsigned int numisoframes)
{
	struct async *as;

	as = FUNC1(sizeof(struct async), GFP_KERNEL);
	if (!as)
		return NULL;
	as->urb = FUNC2(numisoframes, GFP_KERNEL);
	if (!as->urb) {
		FUNC0(as);
		return NULL;
	}
	return as;
}