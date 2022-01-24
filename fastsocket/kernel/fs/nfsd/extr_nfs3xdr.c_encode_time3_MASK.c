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
struct timespec {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *
FUNC1(__be32 *p, struct timespec *time)
{
	*p++ = FUNC0((u32) time->tv_sec); *p++ = FUNC0(time->tv_nsec);
	return p;
}