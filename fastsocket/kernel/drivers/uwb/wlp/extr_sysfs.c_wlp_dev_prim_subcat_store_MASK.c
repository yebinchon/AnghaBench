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
struct wlp {int /*<<< orphan*/  mutex; TYPE_2__* dev_info; } ;
typedef  size_t ssize_t ;
typedef  unsigned int __le16 ;
struct TYPE_3__ {unsigned int subID; } ;
struct TYPE_4__ {TYPE_1__ prim_dev_type; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t FUNC0 (struct wlp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char const*,char*,unsigned int*) ; 

ssize_t FUNC4(struct wlp *wlp, const char *buf,
				  size_t size)
{
	ssize_t result;
	unsigned sub;
	__le16 max_sub = ~0;
	FUNC1(&wlp->mutex);
	if (wlp->dev_info == NULL) {
		result = FUNC0(wlp);
		if (result < 0)
			goto out;
	}
	result = FUNC3(buf, "%u", &sub);
	if (sub <= max_sub)
		wlp->dev_info->prim_dev_type.subID = sub;
	else
		result = -EINVAL;
out:
	FUNC2(&wlp->mutex);
	return result < 0 ? result : size;
}