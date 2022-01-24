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
typedef  int u8 ;
struct via82xx {int spdif_on; int /*<<< orphan*/  pci; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIA8233_SPDIF_CTRL ; 
 int VIA8233_SPDIF_DX3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct via82xx* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct via82xx *chip = FUNC2(kcontrol);
	u8 val, oval;

	FUNC0(chip->pci, VIA8233_SPDIF_CTRL, &oval);
	val = oval & ~VIA8233_SPDIF_DX3;
	if (ucontrol->value.integer.value[0])
		val |= VIA8233_SPDIF_DX3;
	/* save the spdif flag for rate filtering */
	chip->spdif_on = ucontrol->value.integer.value[0] ? 1 : 0;
	if (val != oval) {
		FUNC1(chip->pci, VIA8233_SPDIF_CTRL, val);
		return 1;
	}
	return 0;
}