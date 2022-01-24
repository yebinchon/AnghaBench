#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* free ) (struct hda_codec*) ;} ;
struct hda_codec {size_t addr; struct hda_codec* wcaps; struct hda_codec* modelname; struct hda_codec* chip_name; struct hda_codec* vendor_name; int /*<<< orphan*/  cmd_cache; int /*<<< orphan*/  amp_cache; int /*<<< orphan*/  owner; TYPE_2__* bus; int /*<<< orphan*/  pm_down_notified; TYPE_1__ patch_ops; int /*<<< orphan*/  spdif_out; int /*<<< orphan*/  cvt_setups; int /*<<< orphan*/  nids; int /*<<< orphan*/  mixers; int /*<<< orphan*/  list; int /*<<< orphan*/  power_work; int /*<<< orphan*/  jackpoll_work; } ;
struct TYPE_4__ {int /*<<< orphan*/ ** caddr_tbl; int /*<<< orphan*/  workq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC13(struct hda_codec *codec)
{
	if (!codec)
		return;
	FUNC1(&codec->jackpoll_work);
	FUNC11(codec);
	FUNC4(codec);
#ifdef CONFIG_PM
	cancel_delayed_work(&codec->power_work);
	flush_workqueue(codec->bus->workq);
#endif
	FUNC7(&codec->list);
	FUNC10(&codec->mixers);
	FUNC10(&codec->nids);
	FUNC10(&codec->cvt_setups);
	FUNC10(&codec->spdif_out);
	FUNC9(codec);
	codec->bus->caddr_tbl[codec->addr] = NULL;
	if (codec->patch_ops.free)
		codec->patch_ops.free(codec);
#ifdef CONFIG_PM
	if (!codec->pm_down_notified) /* cancel leftover refcounts */
		hda_call_pm_notify(codec->bus, false);
#endif
	FUNC8(codec->owner);
	FUNC3(&codec->amp_cache);
	FUNC3(&codec->cmd_cache);
	FUNC6(codec->vendor_name);
	FUNC6(codec->chip_name);
	FUNC6(codec->modelname);
	FUNC6(codec->wcaps);
	FUNC6(codec);
}