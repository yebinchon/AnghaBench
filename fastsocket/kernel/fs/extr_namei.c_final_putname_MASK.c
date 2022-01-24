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
struct filename {struct filename* name; scalar_t__ separate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filename*) ; 
 int /*<<< orphan*/  FUNC1 (struct filename*) ; 

void FUNC2(struct filename *name)
{
	if (name->separate) {
		FUNC0(name->name);
		FUNC1(name);
	} else {
		FUNC0(name);
	}
}