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
struct via_spec {unsigned int* dac_stream_tag; } ;
struct hda_codec {struct via_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int AC_PWRST_D0 ; 
 int /*<<< orphan*/  AC_VERB_GET_CONV ; 
 int /*<<< orphan*/  AC_VERB_SET_CHANNEL_STREAMID ; 
 int /*<<< orphan*/  AC_VERB_SET_POWER_STATE ; 
 scalar_t__ FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec, hda_nid_t nid,
			       unsigned int parm, unsigned int index)
{
	struct via_spec *spec = codec->spec;
	unsigned int format;

	if (FUNC0(codec, nid, parm))
		return;
	format = FUNC1(codec, nid, 0, AC_VERB_GET_CONV, 0);
	if (format && (spec->dac_stream_tag[index] != format))
		spec->dac_stream_tag[index] = format;

	FUNC2(codec, nid, 0, AC_VERB_SET_POWER_STATE, parm);
	if (parm == AC_PWRST_D0) {
		format = FUNC1(codec, nid, 0, AC_VERB_GET_CONV, 0);
		if (!format && (spec->dac_stream_tag[index] != format))
			FUNC2(codec, nid, 0,
						  AC_VERB_SET_CHANNEL_STREAMID,
						  spec->dac_stream_tag[index]);
	}
}