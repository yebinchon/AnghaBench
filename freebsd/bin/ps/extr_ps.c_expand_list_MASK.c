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
struct TYPE_2__ {void* ptr; } ;
struct listinfo {int maxcount; int elemsize; TYPE_1__ l; int /*<<< orphan*/  lname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC3(struct listinfo *inf)
{
	void *newlist;
	int newmax;

	newmax = (inf->maxcount + 1) << 1;
	newlist = FUNC1(inf->l.ptr, newmax * inf->elemsize);
	if (newlist == NULL) {
		FUNC0(inf->l.ptr);
		FUNC2(1, "realloc to %d %ss failed", newmax, inf->lname);
	}
	inf->maxcount = newmax;
	inf->l.ptr = newlist;

	return (newlist);
}