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
struct hda_codec {int dummy; } ;
typedef  int hda_nid_t ;

/* Variables and functions */
 int AC_AMPCAP_MIN_MUTE ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	static hda_nid_t out_nids[] = {
		0x10, 0x11, 0
	};
	hda_nid_t *p;

	for (p = out_nids; *p; p++)
		FUNC1(codec, *p, HDA_OUTPUT,
					  AC_AMPCAP_MIN_MUTE |
					  FUNC0(codec, *p, HDA_OUTPUT));
}