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
typedef  int /*<<< orphan*/  uint32_t ;
struct mdp_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mdp_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mdp_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mdp_info *mdp, uint32_t mask)
{
	unsigned long irq_flags;
	int ret;

	FUNC1(&mdp_lock, irq_flags);
	ret = FUNC0(mdp, mask);
	FUNC2(&mdp_lock, irq_flags);
	return ret;
}