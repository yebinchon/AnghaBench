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
struct hd_struct {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t READ ; 
 size_t WRITE ; 
 struct hd_struct* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  io_ticks ; 
 int /*<<< orphan*/ * ios ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * merges ; 
 int /*<<< orphan*/  FUNC2 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct hd_struct*) ; 
 int FUNC4 () ; 
 int FUNC5 (struct hd_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * sectors ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int,unsigned long long,int /*<<< orphan*/ ,int,int,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ticks ; 
 int /*<<< orphan*/  time_in_queue ; 

ssize_t FUNC8(struct device *dev,
		       struct device_attribute *attr, char *buf)
{
	struct hd_struct *p = FUNC0(dev);
	int cpu;

	cpu = FUNC4();
	FUNC3(cpu, p);
	FUNC6();
	return FUNC7(buf,
		"%8lu %8lu %8llu %8u "
		"%8lu %8lu %8llu %8u "
		"%8u %8u %8u"
		"\n",
		FUNC5(p, ios[READ]),
		FUNC5(p, merges[READ]),
		(unsigned long long)FUNC5(p, sectors[READ]),
		FUNC1(FUNC5(p, ticks[READ])),
		FUNC5(p, ios[WRITE]),
		FUNC5(p, merges[WRITE]),
		(unsigned long long)FUNC5(p, sectors[WRITE]),
		FUNC1(FUNC5(p, ticks[WRITE])),
		FUNC2(p),
		FUNC1(FUNC5(p, io_ticks)),
		FUNC1(FUNC5(p, time_in_queue)));
}