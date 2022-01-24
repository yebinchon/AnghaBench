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
struct spec_name {char const* name; } ;
struct elfdump {int /*<<< orphan*/  snl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct spec_name*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct elfdump*,char const*) ; 
 struct spec_name* FUNC2 (int) ; 
 int /*<<< orphan*/  sn_list ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct elfdump *ed, const char *name)
{
	struct spec_name *sn;

	if (FUNC1(ed, name))
		return;
	if ((sn = FUNC2(sizeof(*sn))) == NULL) {
		FUNC3("malloc failed");
		return;
	}
	sn->name = name;
	FUNC0(&ed->snl, sn, sn_list);
}