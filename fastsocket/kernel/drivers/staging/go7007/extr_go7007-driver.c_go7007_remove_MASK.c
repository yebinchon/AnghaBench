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
struct go7007 {scalar_t__ audio_enabled; int /*<<< orphan*/  video_dev; scalar_t__ i2c_adapter_online; int /*<<< orphan*/  i2c_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC1 (struct go7007*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct go7007 *go)
{
	if (go->i2c_adapter_online) {
		if (FUNC2(&go->i2c_adapter) == 0)
			go->i2c_adapter_online = 0;
		else
			FUNC3(go->video_dev,
				"error removing I2C adapter!\n");
	}

	if (go->audio_enabled)
		FUNC0(go);
	FUNC1(go);
}