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
 int /*<<< orphan*/  FUNC0 (struct script_spec*) ; 
 struct script_spec* FUNC1 (char const*) ; 
 struct script_spec* FUNC2 (char const*,struct scripting_ops*) ; 

__attribute__((used)) static struct script_spec *FUNC3(const char *spec,
						struct scripting_ops *ops)
{
	struct script_spec *s = FUNC1(spec);

	if (s)
		return s;

	s = FUNC2(spec, ops);
	if (!s)
		return NULL;

	FUNC0(s);

	return s;
}