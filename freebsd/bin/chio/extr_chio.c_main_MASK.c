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
struct TYPE_2__ {int /*<<< orphan*/ * cc_name; int /*<<< orphan*/  (* cc_handler ) (int /*<<< orphan*/ *,int,char**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGER_ENV_VAR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/ * _PATH_CH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int changer_fd ; 
 int /*<<< orphan*/ * changer_name ; 
 int /*<<< orphan*/  cleanup ; 
 TYPE_1__* commands ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char **argv)
{
	int ch, i;

	while ((ch = FUNC5(argc, argv, "f:")) != -1) {
		switch (ch) {
		case 'f':
			changer_name = optarg;
			break;

		default:
			FUNC11();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC11();

	/* Get the default changer if not already specified. */
	if (changer_name == NULL)
		if ((changer_name = FUNC4(CHANGER_ENV_VAR)) == NULL)
			changer_name = _PATH_CH;

	/* Open the changer device. */
	if ((changer_fd = FUNC6(changer_name, O_RDWR, 0600)) == -1)
		FUNC1(1, "%s: open", changer_name);

	/* Register cleanup function. */
	if (FUNC0(cleanup))
		FUNC1(1, "can't register cleanup function");

	/* Find the specified command. */
	for (i = 0; commands[i].cc_name != NULL; ++i)
		if (FUNC7(*argv, commands[i].cc_name) == 0)
			break;
	if (commands[i].cc_name == NULL) {
		/* look for abbreviation */
		for (i = 0; commands[i].cc_name != NULL; ++i)
			if (FUNC9(*argv, commands[i].cc_name,
			    FUNC8(*argv)) == 0)
				break;
	}

	if (commands[i].cc_name == NULL)
		FUNC2(1, "unknown command: %s", *argv);

	FUNC3 ((*commands[i].cc_handler)(commands[i].cc_name, argc, argv));
	/* NOTREACHED */
}