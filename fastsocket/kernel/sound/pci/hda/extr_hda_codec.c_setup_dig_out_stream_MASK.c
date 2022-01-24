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
struct hda_spdif_out {int ctls; } ;
struct hda_codec {scalar_t__ const* slave_dig_outs; scalar_t__ spdif_status_reset; } ;
typedef  scalar_t__ const hda_nid_t ;

/* Variables and functions */
 int AC_DIG1_ENABLE ; 
 int /*<<< orphan*/  AC_VERB_GET_STREAM_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,scalar_t__ const,int,int) ; 
 unsigned int FUNC1 (struct hda_codec*,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,scalar_t__ const,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 struct hda_spdif_out* FUNC3 (struct hda_codec*,scalar_t__ const) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec, hda_nid_t nid,
				 unsigned int stream_tag, unsigned int format)
{
	struct hda_spdif_out *spdif;
	unsigned int curr_fmt;
	bool reset;

	spdif = FUNC3(codec, nid);
	curr_fmt = FUNC1(codec, nid, 0,
				      AC_VERB_GET_STREAM_FORMAT, 0);
	reset = codec->spdif_status_reset &&
		(spdif->ctls & AC_DIG1_ENABLE) &&
		curr_fmt != format;

	/* turn off SPDIF if needed; otherwise the IEC958 bits won't be
	   updated */
	if (reset)
		FUNC0(codec, nid,
				    spdif->ctls & ~AC_DIG1_ENABLE & 0xff,
				    -1);
	FUNC2(codec, nid, stream_tag, 0, format);
	if (codec->slave_dig_outs) {
		const hda_nid_t *d;
		for (d = codec->slave_dig_outs; *d; d++)
			FUNC2(codec, *d, stream_tag, 0,
						   format);
	}
	/* turn on again (if needed) */
	if (reset)
		FUNC0(codec, nid,
				    spdif->ctls & 0xff, -1);
}