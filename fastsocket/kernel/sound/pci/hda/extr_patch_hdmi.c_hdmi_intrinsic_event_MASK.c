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
struct hdmi_spec {int dummy; } ;
struct hda_jack_tbl {int nid; int jack_dirty; } ;
struct hda_codec {int /*<<< orphan*/  addr; struct hdmi_spec* spec; } ;

/* Variables and functions */
 unsigned int AC_UNSOL_RES_ELDV ; 
 unsigned int AC_UNSOL_RES_PD ; 
 unsigned int AC_UNSOL_RES_TAG_SHIFT ; 
 int /*<<< orphan*/  SND_PR_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 struct hda_jack_tbl* FUNC5 (struct hda_codec*,int) ; 

__attribute__((used)) static void FUNC6(struct hda_codec *codec, unsigned int res)
{
	struct hdmi_spec *spec = codec->spec;
	int tag = res >> AC_UNSOL_RES_TAG_SHIFT;
	int pin_nid;
	int pin_idx;
	struct hda_jack_tbl *jack;

	jack = FUNC5(codec, tag);
	if (!jack)
		return;
	pin_nid = jack->nid;
	jack->jack_dirty = 1;

	FUNC0(SND_PR_VERBOSE,
		"HDMI hot plug event: Codec=%d Pin=%d Presence_Detect=%d ELD_Valid=%d\n",
		codec->addr, pin_nid,
		!!(res & AC_UNSOL_RES_PD), !!(res & AC_UNSOL_RES_ELDV));

	pin_idx = FUNC3(spec, pin_nid);
	if (pin_idx < 0)
		return;

	FUNC2(FUNC1(spec, pin_idx), 1);
	FUNC4(codec);
}