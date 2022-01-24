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
typedef  int /*<<< orphan*/  gchar ;

/* Variables and functions */
#define  FULL_VIEW 130 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
#define  SINGLE_VIEW 129 
#define  SPLIT_VIEW 128 
 int /*<<< orphan*/  SRCTREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*,char*,...) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int*,char***) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int view_mode ; 

int FUNC23(int ac, char *av[])
{
	const char *name;
	char *env;
	gchar *glade_file;

#ifndef LKC_DIRECT_LINK
	FUNC20();
#endif

	FUNC1(PACKAGE, LOCALEDIR);
	FUNC0(PACKAGE, "UTF-8");
	FUNC22(PACKAGE);

	/* GTK stuffs */
	FUNC15();
	FUNC13(&ac, &av);
	FUNC12();

	//add_pixmap_directory (PACKAGE_DATA_DIR "/" PACKAGE "/pixmaps");
	//add_pixmap_directory (PACKAGE_SOURCE_DIR "/pixmaps");

	/* Determine GUI path */
	env = FUNC11(SRCTREE);
	if (env)
		glade_file = FUNC10(env, "/scripts/kconfig/gconf.glade", NULL);
	else if (av[0][0] == '/')
		glade_file = FUNC10(av[0], ".glade", NULL);
	else
		glade_file = FUNC10(FUNC9(), "/", av[0], ".glade", NULL);

	/* Load the interface and connect signals */
	FUNC17(glade_file);
	FUNC19();
	FUNC16();
	FUNC18();

	/* Conf stuffs */
	if (ac > 1 && av[1][0] == '-') {
		switch (av[1][1]) {
		case 'a':
			//showAll = 1;
			break;
		case 'h':
		case '?':
			FUNC21("%s <config>\n", av[0]);
			FUNC7(0);
		}
		name = av[2];
	} else
		name = av[1];

	FUNC2(name);
	FUNC8(&rootmenu);
	FUNC3(NULL);

	switch (view_mode) {
	case SINGLE_VIEW:
		FUNC6();
		break;
	case SPLIT_VIEW:
		FUNC4();
		break;
	case FULL_VIEW:
		FUNC5(&rootmenu);
		break;
	}

	FUNC14();

	return 0;
}