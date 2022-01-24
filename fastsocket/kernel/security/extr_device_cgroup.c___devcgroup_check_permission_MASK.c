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
typedef  void* u32 ;
struct dev_exception_item {short type; short access; void* minor; void* major; } ;
struct dev_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  ex ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (struct dev_cgroup*,struct dev_exception_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_exception_item*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct dev_cgroup* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(short type, u32 major, u32 minor,
				        short access)
{
	struct dev_cgroup *dev_cgroup;
	struct dev_exception_item ex;
	int rc;

	FUNC1(&ex, 0, sizeof(ex));
	ex.type = type;
	ex.major = major;
	ex.minor = minor;
	ex.access = access;

	FUNC2();
	dev_cgroup = FUNC4(current);
	rc = FUNC0(dev_cgroup, &ex);
	FUNC3();

	if (!rc)
		return -EPERM;

	return 0;
}