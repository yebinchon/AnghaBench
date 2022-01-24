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
struct subprocess_info {scalar_t__ cred; int /*<<< orphan*/  (* cleanup ) (struct subprocess_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subprocess_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct subprocess_info*) ; 

void FUNC3(struct subprocess_info *info)
{
	if (info->cleanup)
		(*info->cleanup)(info);
	if (info->cred)
		FUNC1(info->cred);
	FUNC0(info);
}