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
struct subprocess_info {int /*<<< orphan*/  complete; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subprocess_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 struct completion* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct subprocess_info *sub_info)
{
	struct completion *comp = FUNC2(&sub_info->complete, NULL);
	/*
	 * See call_usermodehelper_exec(). If xchg() returns NULL
	 * we own sub_info, the UMH_KILLABLE caller has gone away.
	 */
	if (comp)
		FUNC1(comp);
	else
		FUNC0(sub_info);
}