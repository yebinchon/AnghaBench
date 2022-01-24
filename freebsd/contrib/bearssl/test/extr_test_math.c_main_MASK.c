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
 int /*<<< orphan*/  i31_impl ; 
 int /*<<< orphan*/  i32_impl ; 
 int /*<<< orphan*/ * impl ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(void)
{
	FUNC0("===== i32 ======\n");
	impl = &i32_impl;
	FUNC1();
	FUNC0("===== i31 ======\n");
	impl = &i31_impl;
	FUNC1();
	/*
	test_RSA_core();
	*/
	return 0;
}