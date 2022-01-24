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
struct wlp_uuid {int /*<<< orphan*/ * data; } ;
struct wlp {int /*<<< orphan*/  mutex; struct wlp_uuid uuid; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ssize_t FUNC3(struct wlp *wlp, const char *buf, size_t size)
{
	ssize_t result;
	struct wlp_uuid uuid;

	FUNC0(&wlp->mutex);
	result = FUNC2(buf, "%02hhx %02hhx %02hhx %02hhx "
			"%02hhx %02hhx %02hhx %02hhx "
			"%02hhx %02hhx %02hhx %02hhx "
			"%02hhx %02hhx %02hhx %02hhx ",
			&uuid.data[0] , &uuid.data[1],
			&uuid.data[2] , &uuid.data[3],
			&uuid.data[4] , &uuid.data[5],
			&uuid.data[6] , &uuid.data[7],
			&uuid.data[8] , &uuid.data[9],
			&uuid.data[10], &uuid.data[11],
			&uuid.data[12], &uuid.data[13],
			&uuid.data[14], &uuid.data[15]);
	if (result != 16) {
		result = -EINVAL;
		goto error;
	}
	wlp->uuid = uuid;
error:
	FUNC1(&wlp->mutex);
	return result < 0 ? result : size;
}