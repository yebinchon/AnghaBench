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
struct sw_flow_actions {int actions_len; } ;

/* Variables and functions */
 int FUNC0 (struct sw_flow_actions**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct sw_flow_actions **sfa, int attrtype)
{
	int used = (*sfa)->actions_len;
	int err;

	err = FUNC0(sfa, attrtype, NULL, 0);
	if (err)
		return err;

	return used;
}