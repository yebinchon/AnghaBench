#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * curPtr; int /*<<< orphan*/  atEnd; int /*<<< orphan*/  isOpen; } ;
typedef  int /*<<< orphan*/  ReturnStatus ;
typedef  TYPE_1__* Lst ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  Head ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Unknown ; 

ReturnStatus
FUNC2(Lst l)
{
	if (FUNC1 (l) == FALSE) {
		return (FAILURE);
	}
	(l)->isOpen = TRUE;
	(l)->atEnd = FUNC0 (l) ? Head : Unknown;
	(l)->curPtr = NULL;

	return (SUCCESS);
}