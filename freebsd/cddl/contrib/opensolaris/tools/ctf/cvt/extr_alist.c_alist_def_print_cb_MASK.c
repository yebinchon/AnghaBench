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
typedef  char* ulong_t ;

/* Variables and functions */
 int alist_def_print_cb_key_int ; 
 int alist_def_print_cb_value_int ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int
FUNC1(void *key, void *value)
{
	FUNC0("Key: ");
	if (alist_def_print_cb_key_int == 1)
		FUNC0("%5lu ", (ulong_t)key);
	else
		FUNC0("%s\n", (char *)key);

	FUNC0("Value: ");
	if (alist_def_print_cb_value_int == 1)
		FUNC0("%5lu\n", (ulong_t)value);
	else
		FUNC0("%s\n", (char *)key);

	return (1);
}