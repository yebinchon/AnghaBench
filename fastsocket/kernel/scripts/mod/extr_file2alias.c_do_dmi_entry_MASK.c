#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dmi_system_id {TYPE_1__* matches; } ;
struct TYPE_5__ {scalar_t__ field; char* prefix; } ;
struct TYPE_4__ {scalar_t__ slot; int /*<<< orphan*/  substr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* dmi_fields ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(const char *filename, struct dmi_system_id *id,
			char *alias)
{
	int i, j;

	FUNC2(alias, "dmi*");

	for (i = 0; i < FUNC0(dmi_fields); i++) {
		for (j = 0; j < 4; j++) {
			if (id->matches[j].slot &&
			    id->matches[j].slot == dmi_fields[i].field) {
				FUNC2(alias + FUNC4(alias), ":%s*",
					dmi_fields[i].prefix);
				FUNC1(alias + FUNC4(alias),
						 id->matches[j].substr);
				FUNC3(alias, "*");
			}
		}
	}

	FUNC3(alias, ":");
	return 1;
}