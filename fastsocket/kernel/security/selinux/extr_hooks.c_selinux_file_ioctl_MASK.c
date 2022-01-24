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
typedef  int /*<<< orphan*/  u32 ;
struct file {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE__IOCTL ; 
 int /*<<< orphan*/  FILE__READ ; 
 int /*<<< orphan*/  FILE__WRITE ; 
 int FUNC0 (unsigned int) ; 
 int _IOC_READ ; 
 int _IOC_WRITE ; 
 struct cred* FUNC1 () ; 
 int FUNC2 (struct cred const*,struct file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file *file, unsigned int cmd,
			      unsigned long arg)
{
	const struct cred *cred = FUNC1();
	u32 av = 0;

	if (FUNC0(cmd) & _IOC_WRITE)
		av |= FILE__WRITE;
	if (FUNC0(cmd) & _IOC_READ)
		av |= FILE__READ;
	if (!av)
		av = FILE__IOCTL;

	return FUNC2(cred, file, av);
}