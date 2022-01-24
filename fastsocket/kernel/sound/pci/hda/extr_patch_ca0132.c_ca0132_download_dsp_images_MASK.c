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
struct hda_codec {TYPE_2__* bus; } ;
struct firmware {scalar_t__ data; } ;
struct dsp_image_seg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_FILE ; 
 scalar_t__ FUNC0 (struct hda_codec*,struct dsp_image_seg const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 scalar_t__ FUNC4 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct hda_codec *codec)
{
	bool dsp_loaded = false;
	const struct dsp_image_seg *dsp_os_image;
	const struct firmware *fw_entry;

	if (FUNC4(&fw_entry, EFX_FILE, codec->bus->card->dev) != 0)
		return false;

	dsp_os_image = (struct dsp_image_seg *)(fw_entry->data);
	if (FUNC0(codec, dsp_os_image, 0, 0, true, 0)) {
		FUNC2("ca0132 dspload_image failed.\n");
		goto exit_download;
	}

	dsp_loaded = FUNC1(codec);

exit_download:
	FUNC3(fw_entry);

	return dsp_loaded;
}