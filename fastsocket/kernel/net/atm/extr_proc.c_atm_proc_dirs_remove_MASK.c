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
struct atm_proc_entry {scalar_t__ name; scalar_t__ dirent; } ;

/* Variables and functions */
 struct atm_proc_entry* atm_proc_ents ; 
 int /*<<< orphan*/  atm_proc_root ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	static struct atm_proc_entry *e;

	for (e = atm_proc_ents; e->name; e++) {
		if (e->dirent)
			FUNC1(e->name, atm_proc_root);
	}
	FUNC0(&init_net, "atm");
}