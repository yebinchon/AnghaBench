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
struct node {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* file_prefix ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct node const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct node const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int tree_size ; 

__attribute__((used)) static void
FUNC8(const struct node *root, int gen_funcs)
{
	FILE *fp;

	char fname[MAXPATHLEN + 1];
	FUNC7(fname, "%stree.h", file_prefix);
	if ((fp = FUNC2(fname, "w")) == NULL)
		FUNC0(1, "%s: ", fname);
	FUNC5(fp, root, PREFIX_LEN, NULL);

	FUNC3(fp, "\n#ifdef SNMPTREE_TYPES\n");
	FUNC4(fp, gen_funcs);
	FUNC3(fp, "\n#endif /* SNMPTREE_TYPES */\n\n");

	FUNC3(fp, "#define %sCTREE_SIZE %u\n", file_prefix, tree_size);
	FUNC3(fp, "extern const struct snmp_node %sctree[];\n", file_prefix);

	FUNC1(fp);

	FUNC7(fname, "%stree.c", file_prefix);
	if ((fp = FUNC2(fname, "w")) == NULL)
		FUNC0(1, "%s: ", fname);
	FUNC6(fp, root);
	FUNC1(fp);
}