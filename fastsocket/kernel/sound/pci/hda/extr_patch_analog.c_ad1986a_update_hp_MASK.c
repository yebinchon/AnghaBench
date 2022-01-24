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
struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {scalar_t__ jack_present; } ;

/* Variables and functions */
 unsigned int HDA_AMP_MUTE ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 unsigned int FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	struct ad198x_spec *spec = codec->spec;
	unsigned int mute;

	if (spec->jack_present)
		mute = HDA_AMP_MUTE; /* mute internal speaker */
	else
		/* unmute internal speaker if necessary */
		mute = FUNC0(codec, 0x1a, 0, HDA_OUTPUT, 0);
	FUNC1(codec, 0x1b, HDA_OUTPUT, 0,
				 HDA_AMP_MUTE, mute);
}