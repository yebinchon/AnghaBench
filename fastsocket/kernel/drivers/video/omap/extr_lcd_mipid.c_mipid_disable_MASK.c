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
struct mipid_device {int /*<<< orphan*/  mutex; scalar_t__ enabled; int /*<<< orphan*/  saved_bklight_level; } ;
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mipid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lcd_panel*) ; 
 int /*<<< orphan*/  FUNC2 (struct lcd_panel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mipid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mipid_device*,int) ; 
 struct mipid_device* FUNC7 (struct lcd_panel*) ; 

__attribute__((used)) static void FUNC8(struct lcd_panel *panel)
{
	struct mipid_device *md = FUNC7(panel);

	/*
	 * A final ESD work might be called before returning,
	 * so do this without holding the lock.
	 */
	FUNC0(md);
	FUNC3(&md->mutex);

	if (!md->enabled) {
		FUNC4(&md->mutex);
		return;
	}
	md->saved_bklight_level = FUNC1(panel);
	FUNC2(panel, 0);
	FUNC5(md, 0);
	FUNC6(md, 1);
	md->enabled = 0;

	FUNC4(&md->mutex);
}