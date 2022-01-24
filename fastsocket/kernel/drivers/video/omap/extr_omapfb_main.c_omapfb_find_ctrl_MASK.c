#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ctrl_name; } ;
struct omapfb_platform_data {TYPE_1__ lcd; } ;
struct omapfb_device {TYPE_2__* dev; TYPE_3__* ctrl; TYPE_3__* int_ctrl; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_7__ {char* name; } ;
struct TYPE_6__ {struct omapfb_platform_data* platform_data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__**) ; 
 TYPE_3__** ctrls ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct omapfb_device *fbdev)
{
	struct omapfb_platform_data *conf;
	char name[17];
	int i;

	conf = fbdev->dev->platform_data;

	fbdev->ctrl = NULL;

	FUNC3(name, conf->lcd.ctrl_name, sizeof(name) - 1);
	name[sizeof(name) - 1] = '\0';

	if (FUNC2(name, "internal") == 0) {
		fbdev->ctrl = fbdev->int_ctrl;
		return 0;
	}

	for (i = 0; i < FUNC0(ctrls); i++) {
		FUNC1(fbdev->dev, "ctrl %s\n", ctrls[i]->name);
		if (FUNC2(ctrls[i]->name, name) == 0) {
			fbdev->ctrl = ctrls[i];
			break;
		}
	}

	if (fbdev->ctrl == NULL) {
		FUNC1(fbdev->dev, "ctrl %s not supported\n", name);
		return -1;
	}

	return 0;
}