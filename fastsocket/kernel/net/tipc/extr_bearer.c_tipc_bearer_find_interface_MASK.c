#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct bearer {TYPE_1__ publ; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 scalar_t__ MAX_BEARERS ; 
 char* FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 struct bearer* tipc_bearers ; 

struct bearer *FUNC2(const char *if_name)
{
	struct bearer *b_ptr;
	char *b_if_name;
	u32 i;

	for (i = 0, b_ptr = tipc_bearers; i < MAX_BEARERS; i++, b_ptr++) {
		if (!b_ptr->active)
			continue;
		b_if_name = FUNC0(b_ptr->publ.name, ':') + 1;
		if (!FUNC1(b_if_name, if_name))
			return b_ptr;
	}
	return NULL;
}