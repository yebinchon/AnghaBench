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
struct carlfw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct carlfw*) ; 
 int FUNC1 (struct carlfw*) ; 
 int FUNC2 (struct carlfw*,char*) ; 
 struct carlfw* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct carlfw*) ; 
 int FUNC5 (struct carlfw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(int argc, char *args[])
{
	struct carlfw *fw = NULL;
	int err;

	if (argc < 3 || argc > 4) {
		err = -EINVAL;
		goto err_param;
	}

	switch (args[1][0]) {
	case 'a':
		if (argc != 4)
			goto err_param;

		fw = FUNC3(args[2]);
		if (FUNC0(fw)) {
			err = FUNC1(fw);
			goto err_out;
		}

		err = FUNC2(fw, args[3]);
		break;
	case 'd':
		if (argc != 3)
			goto err_param;

		fw = FUNC3(args[2]);
		if (FUNC0(fw)) {
			err = FUNC1(fw);
			goto err_out;
		}

		err = FUNC5(fw);
		break;

	default:
		goto err_param;
		break;
	}

	FUNC4(fw);
	return EXIT_SUCCESS;

err_out:
	FUNC4(fw);
	FUNC6(stderr, "miniboot action failed (%d).\n", err);
	return EXIT_FAILURE;

err_param:
	FUNC4(fw);
	FUNC7();
	return EXIT_FAILURE;
}