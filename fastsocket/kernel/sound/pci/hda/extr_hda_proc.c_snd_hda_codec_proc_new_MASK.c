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
struct snd_info_entry {int dummy; } ;
struct hda_codec {int addr; TYPE_1__* bus; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  print_codec_info ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,struct snd_info_entry**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*,struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

int FUNC3(struct hda_codec *codec)
{
	char name[32];
	struct snd_info_entry *entry;
	int err;

	FUNC2(name, sizeof(name), "codec#%d", codec->addr);
	err = FUNC0(codec->bus->card, name, &entry);
	if (err < 0)
		return err;

	FUNC1(entry, codec, print_codec_info);
	return 0;
}