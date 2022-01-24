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
struct lun {int /*<<< orphan*/  unit_attention_data; scalar_t__ prevent_medium_removal; } ;
struct fsg_dev {int /*<<< orphan*/  filesem; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct lun*,char*) ; 
 int /*<<< orphan*/  SS_MEDIUM_NOT_PRESENT ; 
 int /*<<< orphan*/  SS_NOT_READY_TO_READY_TRANSITION ; 
 scalar_t__ FUNC1 (struct lun*) ; 
 int /*<<< orphan*/  FUNC2 (struct lun*) ; 
 struct fsg_dev* FUNC3 (struct device*) ; 
 struct lun* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct lun*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct lun	*curlun = FUNC4(dev);
	struct fsg_dev	*fsg = FUNC3(dev);
	int		rc = 0;

	if (curlun->prevent_medium_removal && FUNC1(curlun)) {
		FUNC0(curlun, "eject attempt prevented\n");
		return -EBUSY;				// "Door is locked"
	}

	/* Remove a trailing newline */
	if (count > 0 && buf[count-1] == '\n')
		((char *) buf)[count-1] = 0;		// Ugh!

	/* Eject current medium */
	FUNC5(&fsg->filesem);
	if (FUNC1(curlun)) {
		FUNC2(curlun);
		curlun->unit_attention_data = SS_MEDIUM_NOT_PRESENT;
	}

	/* Load new medium */
	if (count > 0 && buf[0]) {
		rc = FUNC6(curlun, buf);
		if (rc == 0)
			curlun->unit_attention_data =
					SS_NOT_READY_TO_READY_TRANSITION;
	}
	FUNC7(&fsg->filesem);
	return (rc < 0 ? rc : count);
}