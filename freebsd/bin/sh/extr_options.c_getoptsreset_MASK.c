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
struct TYPE_2__ {int reset; } ;

/* Variables and functions */
 TYPE_1__ shellparam ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

void
FUNC1(const char *value)
{
	while (*value == '0')
		value++;
	if (FUNC0(value, "1") == 0)
		shellparam.reset = 1;
}