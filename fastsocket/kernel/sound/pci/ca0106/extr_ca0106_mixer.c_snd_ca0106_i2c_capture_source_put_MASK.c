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
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ca0106 {unsigned int i2c_capture_source; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ca0106*,unsigned int,int /*<<< orphan*/ ) ; 
 struct snd_ca0106* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ca0106 *emu = FUNC1(kcontrol);
	unsigned int source_id;
	int change = 0;
	/* If the capture source has changed,
	 * update the capture volume from the cached value
	 * for the particular source.
	 */
	source_id = ucontrol->value.enumerated.item[0] ;
	if (source_id >= 4)
		return -EINVAL;
	change = (emu->i2c_capture_source != source_id);
	if (change) {
		FUNC0(emu, source_id, 0);
	}
        return change;
}