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
struct viadev {int reg_offset; } ;
struct via82xx {int dummy; } ;
struct snd_pcm_runtime {scalar_t__ format; int channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFSET_TYPE ; 
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int VIA_REG_TYPE_16BIT ; 
 int VIA_REG_TYPE_AUTOSTART ; 
 int VIA_REG_TYPE_INT_EOL ; 
 int VIA_REG_TYPE_INT_FLAG ; 
 int VIA_REG_TYPE_INT_LSAMPLE ; 
 int VIA_REG_TYPE_STEREO ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct via82xx*,struct viadev*) ; 
 int /*<<< orphan*/  FUNC3 (struct via82xx*,struct viadev*) ; 

__attribute__((used)) static void FUNC4(struct via82xx *chip, struct viadev *viadev,
				struct snd_pcm_runtime *runtime)
{
	FUNC2(chip, viadev);
	/* this must be set after channel_reset */
	FUNC3(chip, viadev);
	FUNC1(VIA_REG_TYPE_AUTOSTART |
	     (runtime->format == SNDRV_PCM_FORMAT_S16_LE ? VIA_REG_TYPE_16BIT : 0) |
	     (runtime->channels > 1 ? VIA_REG_TYPE_STEREO : 0) |
	     ((viadev->reg_offset & 0x10) == 0 ? VIA_REG_TYPE_INT_LSAMPLE : 0) |
	     VIA_REG_TYPE_INT_EOL |
	     VIA_REG_TYPE_INT_FLAG, FUNC0(viadev, OFFSET_TYPE));
}