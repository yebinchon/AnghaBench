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
struct scripting_ops {int dummy; } ;
struct script_spec {int dummy; } ;

/* Variables and functions */
 struct script_spec* FUNC0 (char const*) ; 
 struct script_spec* FUNC1 (char const*,struct scripting_ops*) ; 

int FUNC2(const char *spec, struct scripting_ops *ops)
{
	struct script_spec *s;

	s = FUNC0(spec);
	if (s)
		return -1;

	s = FUNC1(spec, ops);
	if (!s)
		return -1;

	return 0;
}