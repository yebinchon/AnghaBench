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
typedef  int /*<<< orphan*/  __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline __u32 FUNC1(void *a, __u32 b, int n)
{
	switch (n) {
		case 4:
			return *(__u32 *)a % b;
		case 8:
			{
			__u64	c = *(__u64 *)a;
			return FUNC0(c, b);
			}
	}

	/* NOTREACHED */
	return 0;
}