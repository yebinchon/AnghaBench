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
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 unsigned short AC97_AD1986_CVREF0 ; 
 unsigned short AC97_AD1986_CVREF1 ; 
 unsigned short AC97_AD1986_CVREF2 ; 
 int /*<<< orphan*/  AC97_AD1986_CVREF_MASK ; 
 unsigned short AC97_AD1986_LVREF0 ; 
 unsigned short AC97_AD1986_LVREF1 ; 
 unsigned short AC97_AD1986_LVREF2 ; 
 int /*<<< orphan*/  AC97_AD1986_LVREF_MASK ; 
 unsigned short AC97_AD1986_MVREF0 ; 
 unsigned short AC97_AD1986_MVREF1 ; 
 unsigned short AC97_AD1986_MVREF2 ; 
 int /*<<< orphan*/  AC97_AD1986_MVREF_MASK ; 
 int /*<<< orphan*/  AC97_AD_MISC2 ; 
 int /*<<< orphan*/  AC97_AD_MISC3 ; 
 int EINVAL ; 
 int FUNC0 (struct snd_ac97*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 struct snd_ac97* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ac97 *ac97 = FUNC1(kcontrol);
	unsigned short cval;
	unsigned short lval;
	unsigned short mval;
	int cret;
	int lret;
	int mret;

	switch (ucontrol->value.enumerated.item[0])
	{
	case 0: /* High-Z */
		cval = 0;
		lval = 0;
		mval = 0;
		break;
	case 1: /* 3.7 V */
		cval = AC97_AD1986_CVREF2;
		lval = AC97_AD1986_LVREF2;
		mval = AC97_AD1986_MVREF2;
		break;
	case 2: /* 2.25 V */
		cval = AC97_AD1986_CVREF0;
		lval = AC97_AD1986_LVREF0;
		mval = AC97_AD1986_MVREF0;
		break;
	case 3: /* 0 V */
		cval = AC97_AD1986_CVREF1;
		lval = AC97_AD1986_LVREF1;
		mval = AC97_AD1986_MVREF1;
		break;
	default:
		return -EINVAL;
	}

	cret = FUNC0(ac97, AC97_AD_MISC2,
				    AC97_AD1986_CVREF_MASK, cval);
	if (cret < 0)
		return cret;
	lret = FUNC0(ac97, AC97_AD_MISC3,
				    AC97_AD1986_LVREF_MASK, lval);
	if (lret < 0)
		return lret;
	mret = FUNC0(ac97, AC97_AD_MISC2,
				    AC97_AD1986_MVREF_MASK, mval);
	if (mret < 0)
		return mret;

	return (cret > 0 || lret > 0 || mret > 0) ? 1 : 0;
}