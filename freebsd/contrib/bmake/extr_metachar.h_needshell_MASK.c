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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static inline int
FUNC2(const char *cmd, int white)
{
	while (!FUNC0(*cmd) && *cmd != ':' && *cmd != '=') {
		if (white && FUNC1((unsigned char)*cmd))
			break;
		cmd++;
	}

	return *cmd != '\0';
}