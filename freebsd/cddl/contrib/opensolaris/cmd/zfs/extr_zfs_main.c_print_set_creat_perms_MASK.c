#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_deleg_who_type_t ;
struct TYPE_9__ {char* dp_name; } ;
struct TYPE_8__ {char* who_name; int /*<<< orphan*/  who_type; int /*<<< orphan*/ * who_deleg_perm_avl; } ;
struct TYPE_10__ {TYPE_2__ dpn_perm; TYPE_1__ who_perm; } ;
typedef  TYPE_3__ who_perm_node_t ;
typedef  int /*<<< orphan*/  uu_avl_t ;
typedef  TYPE_3__ deleg_perm_node_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 char const* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(uu_avl_t *who_avl)
{
	const char *sc_title[] = {
		FUNC0("Permission sets:\n"),
		FUNC0("Create time permissions:\n"),
		NULL
	};
	const char **title_ptr = sc_title;
	who_perm_node_t *who_node = NULL;
	int prev_weight = -1;

	for (who_node = FUNC3(who_avl); who_node != NULL;
	    who_node = FUNC4(who_avl, who_node)) {
		uu_avl_t *avl = who_node->who_perm.who_deleg_perm_avl;
		zfs_deleg_who_type_t who_type = who_node->who_perm.who_type;
		const char *who_name = who_node->who_perm.who_name;
		int weight = FUNC5(who_type);
		boolean_t first = B_TRUE;
		deleg_perm_node_t *deleg_node;

		if (prev_weight != weight) {
			(void) FUNC1(*title_ptr++);
			prev_weight = weight;
		}

		if (who_name == NULL || FUNC2(who_name, 1) == 0)
			(void) FUNC1("\t");
		else
			(void) FUNC1("\t%s ", who_name);

		for (deleg_node = FUNC3(avl); deleg_node != NULL;
		    deleg_node = FUNC4(avl, deleg_node)) {
			if (first) {
				(void) FUNC1("%s",
				    deleg_node->dpn_perm.dp_name);
				first = B_FALSE;
			} else
				(void) FUNC1(",%s",
				    deleg_node->dpn_perm.dp_name);
		}

		(void) FUNC1("\n");
	}
}