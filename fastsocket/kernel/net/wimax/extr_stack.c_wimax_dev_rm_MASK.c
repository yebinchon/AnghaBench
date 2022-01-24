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
struct wimax_dev {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIMAX_ST_DOWN ; 
 int /*<<< orphan*/  __WIMAX_ST_QUIESCING ; 
 int /*<<< orphan*/  FUNC0 (struct wimax_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,char*,struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,char*,struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct wimax_dev*) ; 

void FUNC8(struct wimax_dev *wimax_dev)
{
	FUNC2(3, NULL, "(wimax_dev %p)\n", wimax_dev);

	FUNC3(&wimax_dev->mutex);
	FUNC0(wimax_dev, __WIMAX_ST_QUIESCING);
	FUNC5(wimax_dev);
	FUNC6(wimax_dev);
	FUNC0(wimax_dev, WIMAX_ST_DOWN);
	FUNC4(&wimax_dev->mutex);
	FUNC7(wimax_dev);
	FUNC1(3, NULL, "(wimax_dev %p) = void\n", wimax_dev);
}