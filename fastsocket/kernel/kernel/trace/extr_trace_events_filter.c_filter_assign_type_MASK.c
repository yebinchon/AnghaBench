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
 int FILTER_DYN_STRING ; 
 int FILTER_OTHER ; 
 int FILTER_STATIC_STRING ; 
 scalar_t__ FUNC0 (char const*,char) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int FUNC2(const char *type)
{
	if (FUNC1(type, "__data_loc") && FUNC1(type, "char"))
		return FILTER_DYN_STRING;

	if (FUNC0(type, '[') && FUNC1(type, "char"))
		return FILTER_STATIC_STRING;

	return FILTER_OTHER;
}