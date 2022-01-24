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
struct lun {int ro; } ;
struct fsg_dev {int /*<<< orphan*/  filesem; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct lun*,char*,...) ; 
 scalar_t__ FUNC1 (struct lun*) ; 
 struct fsg_dev* FUNC2 (struct device*) ; 
 struct lun* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	ssize_t		rc = count;
	struct lun	*curlun = FUNC3(dev);
	struct fsg_dev	*fsg = FUNC2(dev);
	int		i;

	if (FUNC5(buf, "%d", &i) != 1)
		return -EINVAL;

	/* Allow the write-enable status to change only while the backing file
	 * is closed. */
	FUNC4(&fsg->filesem);
	if (FUNC1(curlun)) {
		FUNC0(curlun, "read-only status change prevented\n");
		rc = -EBUSY;
	} else {
		curlun->ro = !!i;
		FUNC0(curlun, "read-only status set to %d\n", curlun->ro);
	}
	FUNC6(&fsg->filesem);
	return rc;
}