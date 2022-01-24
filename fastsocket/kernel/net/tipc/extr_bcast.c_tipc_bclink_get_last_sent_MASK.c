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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ next_out; scalar_t__ next_out_no; } ;

/* Variables and functions */
 TYPE_1__* bcl ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

u32 FUNC2(void)
{
	u32 last_sent = FUNC1(bcl->next_out_no - 1);

	if (bcl->next_out)
		last_sent = FUNC1(FUNC0(bcl->next_out) - 1);
	return last_sent;
}