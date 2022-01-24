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
 int NSHORTOPTS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int* optletter ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void
FUNC2(int flag, int val)
{
	int i;

	for (i = 0; i < NSHORTOPTS; i++)
		if (optletter[i] == flag) {
			FUNC1(i, val);
			return;
		}
	FUNC0("Illegal option -%c", flag);
}