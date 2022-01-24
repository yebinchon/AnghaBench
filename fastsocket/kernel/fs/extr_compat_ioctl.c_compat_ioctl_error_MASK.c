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
struct file {int /*<<< orphan*/  f_path; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned int _IOC_SIZEMASK ; 
 unsigned int _IOC_SIZESHIFT ; 
 unsigned int _IOC_TYPEMASK ; 
 unsigned int _IOC_TYPESHIFT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,char*,unsigned int,unsigned int,char*) ; 
 TYPE_1__* current ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char) ; 

__attribute__((used)) static void FUNC7(struct file *filp, unsigned int fd,
		unsigned int cmd, unsigned long arg)
{
	char buf[10];
	char *fn = "?";
	char *path;

	/* find the name of the device. */
	path = (char *)FUNC1(GFP_KERNEL);
	if (path) {
		fn = FUNC3(&filp->f_path, path, PAGE_SIZE);
		if (FUNC0(fn))
			fn = "?";
	}

	 FUNC6(buf,"'%c'", (cmd>>_IOC_TYPESHIFT) & _IOC_TYPEMASK);
	if (!FUNC5(buf[1]))
		FUNC6(buf, "%02x", buf[1]);
	FUNC2("ioctl32(%s:%d): Unknown cmd fd(%d) "
			"cmd(%08x){t:%s;sz:%u} arg(%08x) on %s\n",
			current->comm, current->pid,
			(int)fd, (unsigned int)cmd, buf,
			(cmd >> _IOC_SIZESHIFT) & _IOC_SIZEMASK,
			(unsigned int)arg, fn);

	if (path)
		FUNC4((unsigned long)path);
}