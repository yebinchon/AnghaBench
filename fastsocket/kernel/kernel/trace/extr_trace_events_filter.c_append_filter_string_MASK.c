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
struct event_filter {char* filter_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct event_filter *filter,
				char *string)
{
	int newlen;
	char *new_filter_string;

	FUNC0(!filter->filter_string);
	newlen = FUNC5(filter->filter_string) + FUNC5(string) + 1;
	new_filter_string = FUNC2(newlen, GFP_KERNEL);
	if (!new_filter_string)
		return -ENOMEM;

	FUNC4(new_filter_string, filter->filter_string);
	FUNC3(new_filter_string, string);
	FUNC1(filter->filter_string);
	filter->filter_string = new_filter_string;

	return 0;
}