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
struct snd_ice1712 {int /*<<< orphan*/  reg_lock; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPDIF_CFG ; 
 unsigned char VT1724_CFG_SPDIF_OUT_EN ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 struct snd_ice1712* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC3(kcontrol);
	unsigned char old, val;

	FUNC4(&ice->reg_lock);
	old = val = FUNC1(FUNC0(ice, SPDIF_CFG));
	val &= ~VT1724_CFG_SPDIF_OUT_EN;
	if (ucontrol->value.integer.value[0])
		val |= VT1724_CFG_SPDIF_OUT_EN;
	if (old != val)
		FUNC2(val, FUNC0(ice, SPDIF_CFG));
	FUNC5(&ice->reg_lock);
	return old != val;
}