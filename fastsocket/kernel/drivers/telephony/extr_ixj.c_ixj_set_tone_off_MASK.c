#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned short tone_off_time; } ;
typedef  TYPE_1__ IXJ ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned short,TYPE_1__*) ; 

__attribute__((used)) static int FUNC1(unsigned short arg, IXJ *j)
{
	j->tone_off_time = arg;
	if (FUNC0(0x6E05, j))		/* Set Tone Off Period */

		return -1;
	if (FUNC0(arg, j))
		return -1;
	return 0;
}