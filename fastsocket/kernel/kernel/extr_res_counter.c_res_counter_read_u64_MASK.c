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
typedef  int /*<<< orphan*/  u64 ;
struct res_counter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct res_counter*,int) ; 

u64 FUNC1(struct res_counter *counter, int member)
{
	return *FUNC0(counter, member);
}