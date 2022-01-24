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
typedef  int /*<<< orphan*/  uint8_t ;
struct stat {size_t st_size; } ;
struct carlfw {int dummy; } ;
struct carl9170fw_otus_desc {int /*<<< orphan*/  miniboot_size; int /*<<< orphan*/  feature_set; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CARL9170FW_MINIBOOT ; 
 int /*<<< orphan*/  CARL9170FW_OTUS_DESC_CUR_VER ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ OTUS_MAGIC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct carl9170fw_otus_desc* FUNC3 (struct carlfw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct carlfw*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct carlfw*) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC14(struct carlfw *fw, const char *mini)
{
	struct stat file_stat;
	struct carl9170fw_otus_desc *otus_desc = NULL;
	FILE *m = NULL;
	char *buf = NULL;
	size_t extra;
	int err;

	m = FUNC10(mini, "r");
	if (m == NULL) {
		FUNC11(stderr, "Failed to open file %s (%d).\n",
			mini, errno);
		err = -errno;
		goto fail;
	}

	err = FUNC13(FUNC9(m), &file_stat);
	if (err) {
		FUNC11(stderr, "Failed to query file infos from "
				"\"%s\" (%d).\n", mini, errno);
		err = -errno;
		goto fail;
	}
	extra = file_stat.st_size;

	otus_desc = FUNC3(fw, (uint8_t *) OTUS_MAGIC,
				     sizeof(*otus_desc),
				     CARL9170FW_OTUS_DESC_CUR_VER);
	if (!otus_desc) {
		FUNC11(stderr, "No OTUS descriptor found\n");
		goto fail;
	}

	if (FUNC2(otus_desc->feature_set, CARL9170FW_MINIBOOT)) {
		FUNC11(stderr, "Firmware has already a miniboot image.\n");
		goto fail;
	}

	otus_desc->feature_set |= FUNC7(FUNC0(CARL9170FW_MINIBOOT));
	otus_desc->miniboot_size = FUNC6(extra);

	buf = FUNC4(fw, extra);
	if (FUNC1(buf)) {
		FUNC11(stderr, "Unable to add miniboot image.\n");
		goto fail;
	}

	err = FUNC12(buf, extra, 1, m);
	if (err != 1) {
		FUNC11(stderr, "Unable to load miniboot.\n");
		goto fail;
	}

	FUNC5(fw);
	FUNC8(m);

	return 0;

fail:
	if (m)
		FUNC8(m);

	return err;
}