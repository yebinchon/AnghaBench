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
struct carl9170fw_motd_desc {int /*<<< orphan*/  fw_year_month_day; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  CARL9170FW_MOTD_DESC_CUR_VER ; 
 scalar_t__ MOTD_MAGIC ; 
 struct carl9170fw_motd_desc* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct carlu *ar)
{
	struct carl9170fw_motd_desc *motd_desc;
	unsigned int fw_date;

	motd_desc = FUNC3(ar->fw, (uint8_t *) MOTD_MAGIC,
				     sizeof(*motd_desc),
				     CARL9170FW_MOTD_DESC_CUR_VER);

	if (motd_desc) {
		fw_date = FUNC5(motd_desc->fw_year_month_day);

		FUNC4("Firmware Date: 2%.3d-%.2d-%.2d\n",
		     FUNC2(fw_date), FUNC1(fw_date),
		     FUNC0(fw_date));
	}
}