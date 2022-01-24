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
struct snd_kcontrol {int dummy; } ;
struct link_master {int /*<<< orphan*/  val; int /*<<< orphan*/  hook_private_data; int /*<<< orphan*/  (* hook ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct link_master*) ; 
 struct link_master* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct link_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct snd_kcontrol *kcontrol, bool hook_only)
{
	struct link_master *master;
	bool first_init = false;

	if (!kcontrol)
		return;
	master = FUNC1(kcontrol);
	if (!hook_only) {
		int err = FUNC0(master);
		if (err < 0)
			return;
		first_init = err;
		err = FUNC3(master, master->val, master->val);
		if (err < 0)
			return;
	}

	if (master->hook && !first_init)
		master->hook(master->hook_private_data, master->val);
}