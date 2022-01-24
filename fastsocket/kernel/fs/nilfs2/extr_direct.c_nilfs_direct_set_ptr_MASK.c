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
struct nilfs_direct {int dummy; } ;
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct nilfs_direct*) ; 

__attribute__((used)) static inline void FUNC2(struct nilfs_direct *direct,
					__u64 key, __u64 ptr)
{
	*(FUNC1(direct) + key) = FUNC0(ptr);
}