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
 int FUNC0 (int) ; 
 int AUDIT_PERM_WRITE ; 
 int O_CREAT ; 
 int O_TRUNC ; 

__attribute__((used)) static inline int FUNC1(int flags, int mask)
{
	int n = FUNC0(flags);
	if (flags & (O_TRUNC | O_CREAT))
		n |= AUDIT_PERM_WRITE;
	return n & mask;
}