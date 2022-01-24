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
struct lun {TYPE_1__* filp; } ;
struct fsg_dev {int /*<<< orphan*/  filesem; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ PAGE_SIZE ; 
 size_t FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct lun*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct fsg_dev* FUNC4 (struct device*) ; 
 struct lun* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
		char *buf)
{
	struct lun	*curlun = FUNC5(dev);
	struct fsg_dev	*fsg = FUNC4(dev);
	char		*p;
	ssize_t		rc;

	FUNC6(&fsg->filesem);
	if (FUNC2(curlun)) {	// Get the complete pathname
		p = FUNC3(&curlun->filp->f_path, buf, PAGE_SIZE - 1);
		if (FUNC0(p))
			rc = FUNC1(p);
		else {
			rc = FUNC8(p);
			FUNC7(buf, p, rc);
			buf[rc] = '\n';		// Add a newline
			buf[++rc] = 0;
		}
	} else {				// No file, return 0 bytes
		*buf = 0;
		rc = 0;
	}
	FUNC9(&fsg->filesem);
	return rc;
}