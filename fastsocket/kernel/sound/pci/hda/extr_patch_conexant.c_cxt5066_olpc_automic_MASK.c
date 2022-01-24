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
struct conexant_spec {int ext_mic_present; scalar_t__ dc_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_PIN_SENSE ; 
 int /*<<< orphan*/  AC_VERB_SET_CONNECT_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec)
{
	struct conexant_spec *spec = codec->spec;
	unsigned int present;

	if (spec->dc_enable) /* don't do presence detection in DC mode */
		return;

	present = FUNC1(codec, 0x1a, 0,
				     AC_VERB_GET_PIN_SENSE, 0) & 0x80000000;
	if (present)
		FUNC3("CXT5066: external microphone detected\n");
	else
		FUNC3("CXT5066: external microphone absent\n");

	FUNC2(codec, 0x17, 0, AC_VERB_SET_CONNECT_SEL,
		present ? 0 : 1);
	spec->ext_mic_present = !!present;

	FUNC0(codec);
}