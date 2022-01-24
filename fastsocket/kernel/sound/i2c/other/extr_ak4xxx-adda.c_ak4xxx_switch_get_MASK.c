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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_akm4xxx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_akm4xxx*,int,int) ; 
 struct snd_akm4xxx* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
			     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_akm4xxx *ak = FUNC5(kcontrol);
	int chip = FUNC1(kcontrol->private_value);
	int addr = FUNC0(kcontrol->private_value);
	int shift = FUNC3(kcontrol->private_value);
	int invert = FUNC2(kcontrol->private_value);
	/* we observe the (1<<shift) bit only */
	unsigned char val = FUNC4(ak, chip, addr) & (1<<shift);
	if (invert)
		val = ! val;
	ucontrol->value.integer.value[0] = (val & (1<<shift)) != 0;
	return 0;
}