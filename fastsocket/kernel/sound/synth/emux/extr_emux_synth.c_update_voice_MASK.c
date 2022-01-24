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
struct snd_emux_voice {int /*<<< orphan*/ * port; int /*<<< orphan*/ * chan; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* update ) (struct snd_emux_voice*,int) ;} ;
struct snd_emux {TYPE_1__ ops; } ;

/* Variables and functions */
 int SNDRV_EMUX_UPDATE_PAN ; 
 int SNDRV_EMUX_UPDATE_PITCH ; 
 int SNDRV_EMUX_UPDATE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emux_voice*,int) ; 

__attribute__((used)) static void
FUNC5(struct snd_emux *emu, struct snd_emux_voice *vp, int update)
{
	if (!FUNC0(vp->state))
		return;

	if (vp->chan == NULL || vp->port == NULL)
		return;
	if (update & SNDRV_EMUX_UPDATE_VOLUME)
		FUNC3(vp);
	if (update & SNDRV_EMUX_UPDATE_PITCH)
		FUNC2(vp);
	if (update & SNDRV_EMUX_UPDATE_PAN) {
		if (! FUNC1(vp) && (update == SNDRV_EMUX_UPDATE_PAN))
			return;
	}
	emu->ops.update(vp, update);
}