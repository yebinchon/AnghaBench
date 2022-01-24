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
struct snd_mixer_oss_assign_table {char* name; int /*<<< orphan*/  index; } ;
struct snd_mixer_oss {int dummy; } ;
struct slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_CROUTE ; 
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_CSWITCH ; 
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_CVOLUME ; 
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_GLOBAL ; 
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_GROUTE ; 
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_GSWITCH ; 
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_GVOLUME ; 
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_PROUTE ; 
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_PSWITCH ; 
 int /*<<< orphan*/  SNDRV_MIXER_OSS_ITEM_PVOLUME ; 
 int FUNC0 (struct snd_mixer_oss*,struct slot*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct snd_mixer_oss *mixer,
					struct snd_mixer_oss_assign_table *ptr,
					struct slot *slot)
{
	char str[64];
	int err;

	err = FUNC0(mixer, slot, ptr->name, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_GLOBAL);
	if (err)
		return err;
	FUNC1(str, "%s Switch", ptr->name);
	err = FUNC0(mixer, slot, str, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_GSWITCH);
	if (err)
		return err;
	FUNC1(str, "%s Route", ptr->name);
	err = FUNC0(mixer, slot, str, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_GROUTE);
	if (err)
		return err;
	FUNC1(str, "%s Volume", ptr->name);
	err = FUNC0(mixer, slot, str, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_GVOLUME);
	if (err)
		return err;
	FUNC1(str, "%s Playback Switch", ptr->name);
	err = FUNC0(mixer, slot, str, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_PSWITCH);
	if (err)
		return err;
	FUNC1(str, "%s Playback Route", ptr->name);
	err = FUNC0(mixer, slot, str, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_PROUTE);
	if (err)
		return err;
	FUNC1(str, "%s Playback Volume", ptr->name);
	err = FUNC0(mixer, slot, str, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_PVOLUME);
	if (err)
		return err;
	FUNC1(str, "%s Capture Switch", ptr->name);
	err = FUNC0(mixer, slot, str, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_CSWITCH);
	if (err)
		return err;
	FUNC1(str, "%s Capture Route", ptr->name);
	err = FUNC0(mixer, slot, str, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_CROUTE);
	if (err)
		return err;
	FUNC1(str, "%s Capture Volume", ptr->name);
	err = FUNC0(mixer, slot, str, ptr->index,
				       SNDRV_MIXER_OSS_ITEM_CVOLUME);
	if (err)
		return err;

	return 0;
}