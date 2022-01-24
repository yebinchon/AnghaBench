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
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {unsigned int port_d_mode; scalar_t__ cur_eapd; int /*<<< orphan*/  hp_present; scalar_t__ thinkpad; scalar_t__ dell_automute; } ;

/* Variables and functions */
 unsigned int PIN_HP ; 
 unsigned int PIN_OUT ; 
 scalar_t__ FUNC0 (struct conexant_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct conexant_spec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec)
{
	struct conexant_spec *spec = codec->spec;
	unsigned int pinctl;

	FUNC3("CXT5066: update speaker, hp_present=%d, cur_eapd=%d\n",
		    spec->hp_present, spec->cur_eapd);

	/* Port A (HP) */
	pinctl = (FUNC0(spec) && spec->cur_eapd) ? PIN_HP : 0;
	FUNC2(codec, 0x19, pinctl);

	/* Port D (HP/LO) */
	pinctl = spec->cur_eapd ? spec->port_d_mode : 0;
	if (spec->dell_automute || spec->thinkpad) {
		/* Mute if Port A is connected */
		if (FUNC0(spec))
			pinctl = 0;
	} else {
		/* Thinkpad/Dell doesn't give pin-D status */
		if (!FUNC1(spec))
			pinctl = 0;
	}
	FUNC2(codec, 0x1c, pinctl);

	/* CLASS_D AMP */
	pinctl = (!spec->hp_present && spec->cur_eapd) ? PIN_OUT : 0;
	FUNC2(codec, 0x1f, pinctl);
}