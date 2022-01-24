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

/* Variables and functions */
 unsigned long NFS4_LOCK_MAXTIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 

__attribute__((used)) static unsigned long
FUNC1(unsigned long timeout)
{
	FUNC0(timeout);
	timeout <<= 1;
	if (timeout > NFS4_LOCK_MAXTIMEOUT)
		return NFS4_LOCK_MAXTIMEOUT;
	return timeout;
}