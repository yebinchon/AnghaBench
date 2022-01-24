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
struct linux_binprm {int dummy; } ;

/* Variables and functions */
 int MAX_ARG_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct linux_binprm*,int) ; 

__attribute__((used)) static void FUNC1(struct linux_binprm *bprm)
{
	int i;

	for (i = 0; i < MAX_ARG_PAGES; i++)
		FUNC0(bprm, i);
}