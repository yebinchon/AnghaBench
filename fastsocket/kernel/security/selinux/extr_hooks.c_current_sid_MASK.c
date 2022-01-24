#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct task_security_struct {int /*<<< orphan*/  sid; } ;
struct TYPE_2__ {struct task_security_struct* security; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 

__attribute__((used)) static inline u32 FUNC1(void)
{
	const struct task_security_struct *tsec = FUNC0()->security;

	return tsec->sid;
}