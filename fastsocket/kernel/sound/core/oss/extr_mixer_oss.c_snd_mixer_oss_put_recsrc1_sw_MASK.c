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
struct snd_mixer_oss_slot {scalar_t__ private_data; } ;
struct snd_mixer_oss_file {int dummy; } ;
struct slot {int /*<<< orphan*/ * numid; } ;

/* Variables and functions */
 size_t SNDRV_MIXER_OSS_ITEM_CSWITCH ; 
 int /*<<< orphan*/  FUNC0 (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_mixer_oss_file *fmixer,
					struct snd_mixer_oss_slot *pslot,
					int active)
{
	struct slot *slot = (struct slot *)pslot->private_data;
	
	FUNC0(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_CSWITCH], active, active, 0);
	return 0;
}