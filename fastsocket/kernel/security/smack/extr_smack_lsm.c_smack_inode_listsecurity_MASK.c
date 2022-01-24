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
struct inode {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  XATTR_NAME_SMACK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, char *buffer,
				    size_t buffer_size)
{
	int len = FUNC1(XATTR_NAME_SMACK);

	if (buffer != NULL && len <= buffer_size) {
		FUNC0(buffer, XATTR_NAME_SMACK, len);
		return len;
	}
	return -EINVAL;
}