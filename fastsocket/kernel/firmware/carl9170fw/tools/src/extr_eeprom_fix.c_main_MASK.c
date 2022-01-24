#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct carlfw {int dummy; } ;
struct carl9170fw_fix_desc {int dummy; } ;
struct TYPE_3__ {char option; int argc; int (* func ) (struct carlfw*,struct carl9170fw_fix_desc*,char,int,char**) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CARL9170FW_FIX_DESC_CUR_VER ; 
 int EINVAL ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FIX_MAGIC ; 
 scalar_t__ FUNC1 (struct carlfw*) ; 
 int FUNC2 (struct carlfw*) ; 
 struct carl9170fw_fix_desc* FUNC3 (struct carlfw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct carlfw* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct carlfw*) ; 
 int FUNC6 (struct carlfw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* programm_function ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int) ; 
 int FUNC9 (struct carlfw*,struct carl9170fw_fix_desc*,char,int,char**) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(int argc, char *args[])
{
	struct carl9170fw_fix_desc *fix;
	struct carlfw *fw = NULL;
	unsigned int i;
	int err = 0;
	char option;

	if (argc < 3 || argc > 6) {
		err = -EINVAL;
		goto out;
	}

	fw = FUNC4(args[1]);
	if (FUNC1(fw)) {
		err = FUNC2(fw);
		FUNC7(stderr, "Failed to open file \"%s\" (%d).\n",
			args[1], err);
		goto out;
	}

	fix = FUNC3(fw, (uint8_t *)FIX_MAGIC, sizeof(*fix),
			       CARL9170FW_FIX_DESC_CUR_VER);

	option = args[2][0];
	for (i = 0; i < FUNC0(programm_function); i++) {
		if (programm_function[i].option != option)
			continue;

		if (argc != programm_function[i].argc) {
			err = -EINVAL;
			goto out;
		}

		err = programm_function[i].func(fw, fix, option, argc, args);
		if (err)
			goto out;

		break;
	}
	if (i == FUNC0(programm_function)) {
		FUNC7(stderr, "Unknown option: '%c'\n",
			args[2][0]);
		goto out;
	}

	err = FUNC6(fw);
	if (err) {
		FUNC7(stderr, "Failed to apply changes (%d).\n", err);
		goto out;
	}

out:
	FUNC5(fw);

	if (err) {
		if (err == -EINVAL)
			FUNC10();
		else
			FUNC7(stderr, "%s\n", FUNC8(err));
	}

	return err ? EXIT_FAILURE : EXIT_SUCCESS;
}