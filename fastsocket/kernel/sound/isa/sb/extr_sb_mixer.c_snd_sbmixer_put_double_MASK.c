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
struct snd_sb {int /*<<< orphan*/  mixer_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct snd_sb* FUNC0 (struct snd_kcontrol*) ; 
 unsigned char FUNC1 (struct snd_sb*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_sb *sb = FUNC0(kcontrol);
	unsigned long flags;
	int left_reg = kcontrol->private_value & 0xff;
	int right_reg = (kcontrol->private_value >> 8) & 0xff;
	int left_shift = (kcontrol->private_value >> 16) & 0x07;
	int right_shift = (kcontrol->private_value >> 19) & 0x07;
	int mask = (kcontrol->private_value >> 24) & 0xff;
	int change;
	unsigned char left, right, oleft, oright;

	left = (ucontrol->value.integer.value[0] & mask) << left_shift;
	right = (ucontrol->value.integer.value[1] & mask) << right_shift;
	FUNC3(&sb->mixer_lock, flags);
	if (left_reg == right_reg) {
		oleft = FUNC1(sb, left_reg);
		left = (oleft & ~((mask << left_shift) | (mask << right_shift))) | left | right;
		change = left != oleft;
		if (change)
			FUNC2(sb, left_reg, left);
	} else {
		oleft = FUNC1(sb, left_reg);
		oright = FUNC1(sb, right_reg);
		left = (oleft & ~(mask << left_shift)) | left;
		right = (oright & ~(mask << right_shift)) | right;
		change = left != oleft || right != oright;
		if (change) {
			FUNC2(sb, left_reg, left);
			FUNC2(sb, right_reg, right);
		}
	}
	FUNC4(&sb->mixer_lock, flags);
	return change;
}