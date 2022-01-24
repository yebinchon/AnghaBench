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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct go7007 {int modet_enable; int /*<<< orphan*/  video_dev; scalar_t__ seen_frame; scalar_t__ parse_length; int /*<<< orphan*/  state; TYPE_1__* modet; int /*<<< orphan*/  dvd_mode; } ;
struct TYPE_2__ {int pixel_threshold; int motion_threshold; int mb_threshold; scalar_t__ enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_DATA ; 
 scalar_t__ FUNC0 (struct go7007*,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC1 (struct go7007*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct go7007*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct go7007 *go)
{
	u8 *fw;
	int fw_len, rv = 0, i;
	u16 intr_val, intr_data;

	go->modet_enable = 0;
	if (!go->dvd_mode)
		for (i = 0; i < 4; ++i) {
			if (go->modet[i].enable) {
				go->modet_enable = 1;
				continue;
			}
			go->modet[i].pixel_threshold = 32767;
			go->modet[i].motion_threshold = 32767;
			go->modet[i].mb_threshold = 32767;
		}

	if (FUNC0(go, &fw, &fw_len) < 0)
		return -1;

	if (FUNC2(go, fw, fw_len) < 0 ||
			FUNC1(go, &intr_val, &intr_data) < 0) {
		FUNC5(go->video_dev, "error transferring firmware\n");
		rv = -1;
		goto start_error;
	}

	go->state = STATE_DATA;
	go->parse_length = 0;
	go->seen_frame = 0;
	if (FUNC3(go) < 0) {
		FUNC5(go->video_dev, "error starting stream transfer\n");
		rv = -1;
		goto start_error;
	}

start_error:
	FUNC4(fw);
	return rv;
}