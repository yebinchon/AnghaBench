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
struct vx_core {int /*<<< orphan*/  card; int /*<<< orphan*/  chip_status; } ;
struct snd_vxpocket {int index; } ;
struct pcmcia_device {struct snd_vxpocket* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  VX_STAT_IS_STALE ; 
 int card_alloc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{
	struct snd_vxpocket *vxp;
	struct vx_core *chip;

	if (! link)
		return;

	vxp = link->priv;
	chip = (struct vx_core *)vxp;
	card_alloc &= ~(1 << vxp->index);

	chip->chip_status |= VX_STAT_IS_STALE; /* to be sure */
	FUNC0(chip->card);
	FUNC2(link);
	FUNC1(chip->card);
}