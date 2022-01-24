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
typedef  int u16 ;
struct soc_mixer_control {int reg; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 struct snd_soc_codec* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int FUNC2 (struct snd_soc_codec*,int) ; 
 int FUNC3 (struct snd_soc_codec*,int,int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
        struct snd_soc_codec *codec = FUNC0(kcontrol);
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	int reg = mc->reg;
        int ret;
        u16 val;

        ret = FUNC1(kcontrol, ucontrol);
        if (ret < 0)
                return ret;

        /* now hit the volume update bits (always bit 8) */
        val = FUNC2(codec, reg);
        return FUNC3(codec, reg, val | 0x0100);
}