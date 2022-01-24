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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {scalar_t__ classid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct cgroup*) ; 

__attribute__((used)) static int FUNC1(struct cgroup *cgrp, struct cftype *cft, u64 value)
{
	FUNC0(cgrp)->classid = (u32) value;
	return 0;
}