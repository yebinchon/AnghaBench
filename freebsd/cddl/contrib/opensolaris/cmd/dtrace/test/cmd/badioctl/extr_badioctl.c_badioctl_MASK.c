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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  ioc ;
typedef  scalar_t__ hrtime_t ;
typedef  unsigned int* caddr_t ;

/* Variables and functions */
 unsigned int DTRACEIOC ; 
 unsigned int DTRACEIOC_MAX ; 
 scalar_t__ ESRCH ; 
 int MAP_ANON ; 
 int MAP_PRIVATE ; 
 scalar_t__ NANOSEC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC6 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(pid_t parent)
{
	int fd = -1, random, ps = FUNC9(_SC_PAGESIZE);
	int i = 0, seconds;
	caddr_t addr;
	hrtime_t now, last = 0, end;

	if ((random = FUNC7("/dev/random", O_RDONLY)) == -1)
		FUNC2("couldn't open /dev/random");

	if ((addr = FUNC6(0, ps, PROT_READ | PROT_WRITE,
	    MAP_ANON | MAP_PRIVATE, -1, 0)) == (caddr_t)-1)
		FUNC2("mmap");

	for (;;) {
		unsigned int ioc;

		if ((now = FUNC3()) - last > NANOSEC) {
			if (FUNC5(parent, 0) == -1 && errno == ESRCH) {
				/*
				 * Our parent died.  We will kill ourselves in
				 * sympathy.
				 */
				FUNC1(0);
			}

			/*
			 * Once a second, we'll reopen the device.
			 */
			if (fd != -1)
				FUNC0(fd);

			fd = FUNC7("/devices/pseudo/dtrace@0:dtrace", O_RDONLY);

			if (fd == -1)
				FUNC2("couldn't open DTrace pseudo device");

			last = now;
		}


		if ((i++ % 1000) == 0) {
			/*
			 * Every thousand iterations, change our random gunk.
			 */
			FUNC8(random, addr, ps);
		}

		FUNC8(random, &ioc, sizeof (ioc));
		ioc %= DTRACEIOC_MAX;
		ioc++;
		FUNC4(fd, DTRACEIOC | ioc, addr);
	}
}