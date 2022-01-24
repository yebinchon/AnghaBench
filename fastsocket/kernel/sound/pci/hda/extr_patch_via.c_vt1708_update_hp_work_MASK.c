#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hp_outs; } ;
struct TYPE_6__ {TYPE_2__ autocfg; } ;
struct via_spec {scalar_t__ codec_type; int hp_work_active; scalar_t__ vt1708_jack_detect; TYPE_3__ gen; } ;
struct hda_codec {int /*<<< orphan*/  jackpoll_work; TYPE_1__* bus; int /*<<< orphan*/  jackpoll_interval; struct via_spec* spec; } ;
struct TYPE_4__ {int /*<<< orphan*/  workq; } ;

/* Variables and functions */
 scalar_t__ VT1708 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec)
{
	struct via_spec *spec = codec->spec;
	if (spec->codec_type != VT1708 || !spec->gen.autocfg.hp_outs)
		return;
	if (spec->vt1708_jack_detect) {
		if (!spec->hp_work_active) {
			codec->jackpoll_interval = FUNC1(100);
			FUNC3(codec, 0x1, 0, 0xf81, 0);
			FUNC2(codec->bus->workq,
					   &codec->jackpoll_work, 0);
			spec->hp_work_active = true;
		}
	} else if (!FUNC0(codec))
		FUNC4(codec);
}