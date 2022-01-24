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
struct conexant_spec {int /*<<< orphan*/  hp_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  HP_PRESENT_PORT_A ; 
 int /*<<< orphan*/  HP_PRESENT_PORT_D ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 unsigned int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct conexant_spec *spec = codec->spec;
	unsigned int portA, portD;

	/* Port A */
	portA = FUNC1(codec, 0x19);

	/* Port D */
	portD = FUNC1(codec, 0x1c);

	spec->hp_present = portA ? HP_PRESENT_PORT_A : 0;
	spec->hp_present |= portD ? HP_PRESENT_PORT_D : 0;
	FUNC2("CXT5066: hp automute portA=%x portD=%x present=%d\n",
		portA, portD, spec->hp_present);
	FUNC0(codec);
}