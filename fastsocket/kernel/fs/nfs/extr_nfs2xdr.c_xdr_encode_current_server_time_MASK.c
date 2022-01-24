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
struct timespec {int tv_sec; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int) ; 

__attribute__((used)) static inline __be32*
FUNC1(__be32 *p, struct timespec *timep)
{
	/*
	 * Passing the invalid value useconds=1000000 is a
	 * Sun convention for "set to current server time".
	 * It's needed to make permissions checks for the
	 * "touch" program across v2 mounts to Solaris and
	 * Irix boxes work correctly. See description of
	 * sattr in section 6.1 of "NFS Illustrated" by
	 * Brent Callaghan, Addison-Wesley, ISBN 0-201-32750-5
	 */
	*p++ = FUNC0(timep->tv_sec);
	*p++ = FUNC0(1000000);
	return p;
}