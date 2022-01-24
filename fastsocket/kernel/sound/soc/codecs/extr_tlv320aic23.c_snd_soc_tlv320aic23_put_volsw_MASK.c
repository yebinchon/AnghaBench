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
typedef  int u16 ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLV320AIC23_ANLG ; 
 struct snd_soc_codec* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_codec *codec = FUNC0(kcontrol);
	u16 val, reg;

	val = (ucontrol->value.integer.value[0] & 0x07);

	/* linear conversion to userspace
	* 000	=	-6db
	* 001	=	-9db
	* 010	=	-12db
	* 011	=	-18db (Min)
	* 100	=	0db (Max)
	*/
	val = (val >= 4) ? 4  : (3 - val);

	reg = FUNC1(codec, TLV320AIC23_ANLG) & (~0x1C0);
	FUNC2(codec, TLV320AIC23_ANLG, reg | (val << 6));

	return 0;
}