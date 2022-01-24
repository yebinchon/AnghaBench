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
typedef  size_t u32 ;
struct TYPE_2__ {scalar_t__ callback; } ;
typedef  int /*<<< orphan*/  Handler ;

/* Variables and functions */
 size_t MAX_USERID ; 
 scalar_t__ reg_callback ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_1__* users ; 

int FUNC2(void)
{
	u32 u;
	int res;

	if ((res = FUNC0()))
		return res;

	for (u = 1; u <= MAX_USERID; u++) {
		if (users[u].callback)
			FUNC1((Handler)reg_callback,
				      (unsigned long)&users[u]);
	}
	return 0;
}