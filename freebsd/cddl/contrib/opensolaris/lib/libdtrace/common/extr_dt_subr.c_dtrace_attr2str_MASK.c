#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dtat_class; int /*<<< orphan*/  dtat_data; int /*<<< orphan*/  dtat_name; } ;
typedef  TYPE_1__ dtrace_attribute_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char const*,char const*,char const*) ; 

char *
FUNC3(dtrace_attribute_t attr, char *buf, size_t len)
{
	const char *name = FUNC1(attr.dtat_name);
	const char *data = FUNC1(attr.dtat_data);
	const char *class = FUNC0(attr.dtat_class);

	if (name == NULL || data == NULL || class == NULL)
		return (NULL); /* one or more invalid attributes */

	(void) FUNC2(buf, len, "%s/%s/%s", name, data, class);
	return (buf);
}