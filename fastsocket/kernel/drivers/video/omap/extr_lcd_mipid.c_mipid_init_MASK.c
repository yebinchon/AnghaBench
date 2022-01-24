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
struct omapfb_device {int dummy; } ;
struct mipid_device {int /*<<< orphan*/  saved_bklight_level; scalar_t__ enabled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  esd_work; TYPE_1__* spi; int /*<<< orphan*/ * esd_wq; struct omapfb_device* fbdev; } ;
struct lcd_panel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mipid_device*) ; 
 int /*<<< orphan*/  mipid_esd_work ; 
 int /*<<< orphan*/  FUNC4 (struct lcd_panel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct mipid_device*) ; 
 struct mipid_device* FUNC7 (struct lcd_panel*) ; 

__attribute__((used)) static int FUNC8(struct lcd_panel *panel,
			    struct omapfb_device *fbdev)
{
	struct mipid_device *md = FUNC7(panel);

	md->fbdev = fbdev;
	md->esd_wq = FUNC1("mipid_esd");
	if (md->esd_wq == NULL) {
		FUNC2(&md->spi->dev, "can't create ESD workqueue\n");
		return -ENOMEM;
	}
	FUNC0(&md->esd_work, mipid_esd_work);
	FUNC5(&md->mutex);

	md->enabled = FUNC6(md);

	if (md->enabled)
		FUNC3(md);
	else
		md->saved_bklight_level = FUNC4(panel);

	return 0;
}