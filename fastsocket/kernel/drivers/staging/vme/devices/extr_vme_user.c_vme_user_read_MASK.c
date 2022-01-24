#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_2__* f_dentry; } ;
typedef  scalar_t__ ssize_t ;
typedef  size_t loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  sem; int /*<<< orphan*/  resource; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_rdev; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
#define  MASTER_MINOR 129 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
#define  SLAVE_MINOR 128 
 scalar_t__ FUNC1 (unsigned int,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* image ; 
 scalar_t__ FUNC3 (unsigned int,char*,size_t,size_t*) ; 
 int* type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct file *file, char *buf, size_t count,
			loff_t * ppos)
{
	unsigned int minor = FUNC0(file->f_dentry->d_inode->i_rdev);
	ssize_t retval;
	size_t image_size;
	size_t okcount;

	FUNC2(&image[minor].sem);

	/* XXX Do we *really* want this helper - we can use vme_*_get ? */
	image_size = FUNC5(image[minor].resource);

	/* Ensure we are starting at a valid location */
	if ((*ppos < 0) || (*ppos > (image_size - 1))) {
		FUNC4(&image[minor].sem);
		return 0;
	}

	/* Ensure not reading past end of the image */
	if (*ppos + count > image_size)
		okcount = image_size - *ppos;
	else
		okcount = count;

	switch (type[minor]){
	case MASTER_MINOR:
		retval = FUNC3(minor, buf, okcount, ppos);
		break;
	case SLAVE_MINOR:
		retval = FUNC1(minor, buf, okcount, ppos);
		break;
	default:
		retval = -EINVAL;
	}

	FUNC4(&image[minor].sem);

	if (retval > 0)
		*ppos += retval;

	return retval;
}