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
struct script_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct script_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct script_desc*) ; 
 struct script_desc* FUNC2 (char const*) ; 
 struct script_desc* FUNC3 (char const*) ; 

__attribute__((used)) static struct script_desc *FUNC4(const char *name)
{
	struct script_desc *s = FUNC2(name);

	if (s)
		return s;

	s = FUNC3(name);
	if (!s)
		goto out_delete_desc;

	FUNC0(s);

	return s;

out_delete_desc:
	FUNC1(s);

	return NULL;
}