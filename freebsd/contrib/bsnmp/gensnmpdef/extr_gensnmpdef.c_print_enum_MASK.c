#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  integer32; } ;
struct TYPE_8__ {TYPE_1__ value; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; TYPE_2__ value; } ;
typedef  int /*<<< orphan*/  SmiType ;
typedef  TYPE_3__ SmiNamedNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC3(SmiType *t)
{
	SmiNamedNumber *nnum;

	FUNC0(" (");
	for (nnum = FUNC1(t); nnum != NULL;
	    nnum = FUNC2(nnum))
		FUNC0(" %ld %s", nnum->value.value.integer32, nnum->name);
	FUNC0(" )");
}