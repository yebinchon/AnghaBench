#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  active_streams; } ;
struct via_spec {int alc_mode; int codec_type; TYPE_1__ gen; scalar_t__ no_pin_power_ctl; } ;
struct hda_codec {int /*<<< orphan*/  afg; struct via_spec* spec; } ;

/* Variables and functions */
#define  VT1702 138 
#define  VT1705CF 137 
#define  VT1708B_4CH 136 
#define  VT1708B_8CH 135 
#define  VT1708S 134 
#define  VT1716S 133 
#define  VT1718S 132 
#define  VT1802 131 
#define  VT1808 130 
#define  VT1812 129 
#define  VT2002P 128 
 scalar_t__ FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec, bool force)
{
	struct via_spec *spec = codec->spec;
	bool enable;
	unsigned int verb, parm;

	if (spec->no_pin_power_ctl)
		enable = false;
	else
		enable = FUNC0(codec) && !spec->gen.active_streams;
	if (enable == spec->alc_mode && !force)
		return;
	spec->alc_mode = enable;

	/* decide low current mode's verb & parameter */
	switch (spec->codec_type) {
	case VT1708B_8CH:
	case VT1708B_4CH:
		verb = 0xf70;
		parm = enable ? 0x02 : 0x00; /* 0x02: 2/3x, 0x00: 1x */
		break;
	case VT1708S:
	case VT1718S:
	case VT1716S:
		verb = 0xf73;
		parm = enable ? 0x51 : 0xe1; /* 0x51: 4/28x, 0xe1: 1x */
		break;
	case VT1702:
		verb = 0xf73;
		parm = enable ? 0x01 : 0x1d; /* 0x01: 4/40x, 0x1d: 1x */
		break;
	case VT2002P:
	case VT1812:
	case VT1802:
		verb = 0xf93;
		parm = enable ? 0x00 : 0xe0; /* 0x00: 4/40x, 0xe0: 1x */
		break;
	case VT1705CF:
	case VT1808:
		verb = 0xf82;
		parm = enable ? 0x00 : 0xe0;  /* 0x00: 4/40x, 0xe0: 1x */
		break;
	default:
		return;		/* other codecs are not supported */
	}
	/* send verb */
	FUNC1(codec, codec->afg, 0, verb, parm);
}