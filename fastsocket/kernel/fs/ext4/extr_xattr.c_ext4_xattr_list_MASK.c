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
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*,char*,size_t) ; 
 int FUNC3 (struct inode*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct inode *inode, char *buffer, size_t buffer_size)
{
	int i_error, b_error;

	FUNC1(&FUNC0(inode)->xattr_sem);
	i_error = FUNC3(inode, buffer, buffer_size);
	if (i_error < 0) {
		b_error = 0;
	} else {
		if (buffer) {
			buffer += i_error;
			buffer_size -= i_error;
		}
		b_error = FUNC2(inode, buffer, buffer_size);
		if (b_error < 0)
			i_error = 0;
	}
	FUNC4(&FUNC0(inode)->xattr_sem);
	return i_error + b_error;
}