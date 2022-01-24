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
struct strfilter {int dummy; } ;

/* Variables and functions */
 struct strfilter* available_func_filter ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(const char *target, struct strfilter *_filter,
					bool user)
{
	FUNC2();
	available_func_filter = _filter;

	if (!user)
		return FUNC0(target);

	return FUNC1(target);
}