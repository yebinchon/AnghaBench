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
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ERANGE ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,size_t) ; 
 size_t FUNC1 (struct inode*,char const*,void**,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 

ssize_t
FUNC3(struct inode *inode, const char *name, void *value,
			size_t size)
{
	void *buffer = NULL;
	ssize_t len;

	if (!value || !size) {
		len = FUNC1(inode, name, &buffer, false);
		goto out_noalloc;
	}

	len = FUNC1(inode, name, &buffer, true);
	if (len < 0)
		return len;
	if (size < len) {
		len = -ERANGE;
		goto out;
	}
	FUNC0(value, buffer, len);
out:
	FUNC2(buffer, len);
out_noalloc:
	return len;
}