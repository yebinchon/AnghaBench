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
struct viadev {int dummy; } ;
struct via82xx_modem {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct viadev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFSET_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int VIA_REG_TYPE_AUTOSTART ; 
 int VIA_REG_TYPE_INT_EOL ; 
 int VIA_REG_TYPE_INT_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct via82xx_modem* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct via82xx_modem*,struct viadev*) ; 
 int /*<<< orphan*/  FUNC4 (struct via82xx_modem*,struct viadev*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct via82xx_modem *chip = FUNC2(substream);
	struct viadev *viadev = substream->runtime->private_data;

	FUNC3(chip, viadev);
	/* this must be set after channel_reset */
	FUNC4(chip, viadev);
	FUNC1(VIA_REG_TYPE_AUTOSTART|VIA_REG_TYPE_INT_EOL|VIA_REG_TYPE_INT_FLAG,
	     FUNC0(viadev, OFFSET_TYPE));
	return 0;
}