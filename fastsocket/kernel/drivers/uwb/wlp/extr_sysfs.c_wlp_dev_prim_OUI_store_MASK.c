#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wlp {int /*<<< orphan*/  mutex; TYPE_2__* dev_info; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  OUI; } ;
struct TYPE_4__ {TYPE_1__ prim_dev_type; } ;
typedef  int /*<<< orphan*/  OUI ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct wlp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ssize_t FUNC5(struct wlp *wlp, const char *buf, size_t size)
{
	ssize_t result;
	u8 OUI[3];
	FUNC2(&wlp->mutex);
	if (wlp->dev_info == NULL) {
		result = FUNC0(wlp);
		if (result < 0)
			goto out;
	}
	result = FUNC4(buf, "%hhx:%hhx:%hhx",
			&OUI[0], &OUI[1], &OUI[2]);
	if (result != 3) {
		result = -EINVAL;
		goto out;
	} else
		FUNC1(wlp->dev_info->prim_dev_type.OUI, OUI, sizeof(OUI));
out:
	FUNC3(&wlp->mutex);
	return result < 0 ? result : size;
}