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
struct line6_dump_request {int ok; int /*<<< orphan*/  timer; TYPE_1__* reqbufs; } ;
struct TYPE_2__ {int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct line6_dump_request*,int /*<<< orphan*/ ) ; 

void FUNC2(struct line6_dump_request *l6dr)
{
	if (l6dr->reqbufs[0].buffer == NULL)
		return;
	FUNC1(l6dr, 0);
	l6dr->ok = 1;
	FUNC0(&l6dr->timer);
}