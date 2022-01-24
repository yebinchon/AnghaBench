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
struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_AMP_GET_INPUT ; 
 int AC_AMP_GET_LEFT ; 
 int AC_AMP_GET_OUTPUT ; 
 int AC_AMP_GET_RIGHT ; 
 int /*<<< orphan*/  AC_VERB_GET_AMP_GAIN_MUTE ; 
 int HDA_OUTPUT ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_info_buffer *buffer,
			   struct hda_codec *codec, hda_nid_t nid,
			   int dir, int stereo, int indices)
{
	unsigned int val;
	int i;

	dir = dir == HDA_OUTPUT ? AC_AMP_GET_OUTPUT : AC_AMP_GET_INPUT;
	for (i = 0; i < indices; i++) {
		FUNC1(buffer, " [");
		val = FUNC0(codec, nid, 0,
					 AC_VERB_GET_AMP_GAIN_MUTE,
					 AC_AMP_GET_LEFT | dir | i);
		FUNC1(buffer, "0x%02x", val);
		if (stereo) {
			val = FUNC0(codec, nid, 0,
						 AC_VERB_GET_AMP_GAIN_MUTE,
						 AC_AMP_GET_RIGHT | dir | i);
			FUNC1(buffer, " 0x%02x", val);
		}
		FUNC1(buffer, "]");
	}
	FUNC1(buffer, "\n");
}