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
struct hdsp {int max_channels; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct hdsp*,int,int) ; 
 int FUNC1 (struct hdsp*,int,int) ; 
 int FUNC2 (struct hdsp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdsp*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdsp*) ; 
 struct hdsp* FUNC5 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct hdsp *hdsp = FUNC5(kcontrol);
	int change;
	int source;
	int destination;
	int gain;
	int addr;

	if (!FUNC4(hdsp))
		return -EBUSY;

	source = ucontrol->value.integer.value[0];
	destination = ucontrol->value.integer.value[1];

	if (source >= hdsp->max_channels)
		addr = FUNC1(hdsp,source-hdsp->max_channels, destination);
	else
		addr = FUNC0(hdsp,source, destination);

	gain = ucontrol->value.integer.value[2];

	FUNC6(&hdsp->lock);
	change = gain != FUNC2(hdsp, addr);
	if (change)
		FUNC3(hdsp, addr, gain);
	FUNC7(&hdsp->lock);
	return change;
}