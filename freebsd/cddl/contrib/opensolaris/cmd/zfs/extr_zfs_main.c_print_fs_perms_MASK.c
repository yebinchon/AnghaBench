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
typedef  int /*<<< orphan*/  uu_avl_t ;
struct TYPE_9__ {int /*<<< orphan*/  fsps_list; } ;
typedef  TYPE_2__ fs_perm_set_t ;
struct TYPE_8__ {char* fsp_name; int /*<<< orphan*/ * fsp_uge_avl; int /*<<< orphan*/ * fsp_sc_avl; } ;
struct TYPE_10__ {TYPE_1__ fspn_fsperm; } ;
typedef  TYPE_3__ fs_perm_node_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  MAXNAMELEN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int FUNC5 (char*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC8(fs_perm_set_t *fspset)
{
	fs_perm_node_t *node = NULL;
	char buf[MAXNAMELEN + 32];
	const char *dsname = buf;

	for (node = FUNC6(fspset->fsps_list); node != NULL;
	    node = FUNC7(fspset->fsps_list, node)) {
		uu_avl_t *sc_avl = node->fspn_fsperm.fsp_sc_avl;
		uu_avl_t *uge_avl = node->fspn_fsperm.fsp_uge_avl;
		int left = 0;

		(void) FUNC4(buf, sizeof (buf),
		    FUNC0("---- Permissions on %s "),
		    node->fspn_fsperm.fsp_name);
		(void) FUNC3(dsname);
		left = 70 - FUNC5(buf);
		while (left-- > 0)
			(void) FUNC3("-");
		(void) FUNC3("\n");

		FUNC1(sc_avl);
		FUNC2(uge_avl, B_TRUE, B_FALSE,
		    FUNC0("Local permissions:\n"));
		FUNC2(uge_avl, B_FALSE, B_TRUE,
		    FUNC0("Descendent permissions:\n"));
		FUNC2(uge_avl, B_TRUE, B_TRUE,
		    FUNC0("Local+Descendent permissions:\n"));
	}
}