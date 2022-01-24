#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct link_master {int val; int /*<<< orphan*/  hook_private_data; int /*<<< orphan*/  (* hook ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct link_master*) ; 
 struct link_master* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct link_master*,int,int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
		      struct snd_ctl_elem_value *ucontrol)
{
	struct link_master *master = FUNC1(kcontrol);
	int err, new_val, old_val;
	bool first_init;

	err = FUNC0(master);
	if (err < 0)
		return err;
	first_init = err;
	old_val = master->val;
	new_val = ucontrol->value.integer.value[0];
	if (new_val == old_val)
		return 0;

	err = FUNC3(master, old_val, new_val);
	if (err < 0)
		return err;
	if (master->hook && !first_init)
		master->hook(master->hook_private_data, master->val);
	return 1;
}