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
struct carlu {int /*<<< orphan*/  fw; } ;
struct carl9170fw_otus_desc {int /*<<< orphan*/  api_ver; int /*<<< orphan*/  feature_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170FW_DUMMY_FEATURE ; 
 int /*<<< orphan*/  CARL9170FW_OTUS_DESC_CUR_VER ; 
 int /*<<< orphan*/  CARL9170FW_UNUSABLE ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ OTUS_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct carl9170fw_otus_desc* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct carlu *ar)
{
	struct carl9170fw_otus_desc *otus_desc;

	otus_desc = FUNC1(ar->fw, (uint8_t *) OTUS_MAGIC,
				     sizeof(*otus_desc),
				     CARL9170FW_OTUS_DESC_CUR_VER);

	if (!otus_desc) {
		FUNC3("No valid OTUS descriptor found.\n");
		return -EINVAL;
	}

	if (!FUNC0(otus_desc->feature_set, CARL9170FW_DUMMY_FEATURE)) {
		FUNC3("Invalid Firmware Descriptor.\n");
		return -EIO;
	}

	if (FUNC0(otus_desc->feature_set, CARL9170FW_UNUSABLE))
		FUNC2("Firmware is marked as unuseable.\n");

	FUNC4("Firmware Version: %d.\n", otus_desc->api_ver);

	return 0;
}