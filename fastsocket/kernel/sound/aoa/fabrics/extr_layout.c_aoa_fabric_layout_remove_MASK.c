#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct soundbus_dev {int pcmid; int /*<<< orphan*/ * pcmname; TYPE_1__ ofdev; } ;
struct TYPE_8__ {TYPE_2__* methods; } ;
struct layout_dev {TYPE_3__ gpio; int /*<<< orphan*/  sound; int /*<<< orphan*/  list; int /*<<< orphan*/ ** codecs; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* exit ) (TYPE_3__*) ;int /*<<< orphan*/  (* set_notify ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AOA_NOTIFY_HEADPHONE ; 
 int /*<<< orphan*/  AOA_NOTIFY_LINE_OUT ; 
 int MAX_CODECS_PER_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct layout_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct layout_dev*) ; 
 int /*<<< orphan*/ * layout_device ; 
 int /*<<< orphan*/  layouts_list_items ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC8(struct soundbus_dev *sdev)
{
	struct layout_dev *ldev = FUNC1(&sdev->ofdev.dev);
	int i;

	for (i=0; i<MAX_CODECS_PER_BUS; i++) {
		if (ldev->codecs[i]) {
			FUNC0(ldev->codecs[i]);
		}
		ldev->codecs[i] = NULL;
	}
	FUNC3(&ldev->list);
	layouts_list_items--;
	FUNC4(ldev->sound);

	ldev->gpio.methods->set_notify(&ldev->gpio,
				       AOA_NOTIFY_HEADPHONE,
				       NULL,
				       NULL);
	ldev->gpio.methods->set_notify(&ldev->gpio,
				       AOA_NOTIFY_LINE_OUT,
				       NULL,
				       NULL);

	ldev->gpio.methods->exit(&ldev->gpio);
	layout_device = NULL;
	FUNC2(ldev);
	sdev->pcmid = -1;
	sdev->pcmname = NULL;
	return 0;
}