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
struct dlm_lock_resource {int /*<<< orphan*/  refmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(int bit,
						struct dlm_lock_resource *res,
						const char *file,
						int line)
{
	//printk("%s:%d:%.*s: setting bit %d\n", file, line,
	//     res->lockname.len, res->lockname.name, bit);
	FUNC0(bit, res->refmap);
}