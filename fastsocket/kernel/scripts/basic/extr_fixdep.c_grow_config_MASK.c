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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int len_config ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int size_config ; 
 int /*<<< orphan*/ * str_config ; 

__attribute__((used)) static void FUNC3(int len)
{
	while (len_config + len > size_config) {
		if (size_config == 0)
			size_config = 2048;
		str_config = FUNC2(str_config, size_config *= 2);
		if (str_config == NULL)
			{ FUNC1("fixdep:malloc"); FUNC0(1); }
	}
}