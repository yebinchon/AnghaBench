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
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_size; } ;
struct property {int dummy; } ;
struct node {int dummy; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct node*,struct node*) ; 
 int /*<<< orphan*/  FUNC3 (struct node*,struct property*) ; 
 struct node* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct property* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 
 struct node* FUNC15 (struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (char const*) ; 
 struct dirent* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct node *FUNC21(const char *dirname)
{
	DIR *d;
	struct dirent *de;
	struct stat st;
	struct node *tree;

	d = FUNC16(dirname);
	if (!d)
		FUNC8("Couldn't opendir() \"%s\": %s\n", dirname, FUNC19(errno));

	tree = FUNC4(NULL, NULL);

	while ((de = FUNC17(d)) != NULL) {
		char *tmpname;

		if (FUNC18(de->d_name, ".")
		    || FUNC18(de->d_name, ".."))
			continue;

		tmpname = FUNC13(dirname, de->d_name);

		if (FUNC14(tmpname, &st) < 0)
			FUNC8("stat(%s): %s\n", tmpname, FUNC19(errno));

		if (FUNC1(st.st_mode)) {
			struct property *prop;
			FILE *pfile;

			pfile = FUNC10(tmpname, "rb");
			if (! pfile) {
				FUNC11(stderr,
					"WARNING: Cannot open %s: %s\n",
					tmpname, FUNC19(errno));
			} else {
				prop = FUNC5(FUNC20(de->d_name),
						      FUNC7(pfile,
								     st.st_size));
				FUNC3(tree, prop);
				FUNC9(pfile);
			}
		} else if (FUNC0(st.st_mode)) {
			struct node *newchild;

			newchild = FUNC21(tmpname);
			newchild = FUNC15(newchild, FUNC20(de->d_name));
			FUNC2(tree, newchild);
		}

		FUNC12(tmpname);
	}

	FUNC6(d);
	return tree;
}