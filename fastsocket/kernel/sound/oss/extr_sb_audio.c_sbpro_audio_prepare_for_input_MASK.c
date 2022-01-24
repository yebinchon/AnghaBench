#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ dma16; scalar_t__ dma8; int bits; scalar_t__ model; int tconst; int channels; scalar_t__ trigger_bits; int /*<<< orphan*/  lock; } ;
typedef  TYPE_3__ sb_devc ;
struct TYPE_9__ {TYPE_2__* dmap_in; TYPE_1__* dmap_out; TYPE_3__* devc; } ;
struct TYPE_7__ {scalar_t__ dma; } ;
struct TYPE_6__ {scalar_t__ dma; } ;

/* Variables and functions */
 int AFMT_S16_LE ; 
 int DSP_CMD_SPKOFF ; 
 scalar_t__ MDL_JAZZ ; 
 scalar_t__ MDL_SMW ; 
 TYPE_5__** audio_devs ; 
 scalar_t__ FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(int dev, int bsize, int bcount)
{				/* For SB Pro and Jazz16 */
	sb_devc *devc = audio_devs[dev]->devc;
	unsigned long flags;
	unsigned char bits = 0;

	if (devc->dma16 >= 0 && devc->dma16 != devc->dma8)
		audio_devs[dev]->dmap_out->dma = audio_devs[dev]->dmap_in->dma =
			devc->bits == 16 ? devc->dma16 : devc->dma8;

	if (devc->model == MDL_JAZZ || devc->model == MDL_SMW)
		if (devc->bits == AFMT_S16_LE)
			bits = 0x04;	/* 16 bit mode */

	FUNC1(&devc->lock, flags);
	if (FUNC0(devc, 0x40))
		FUNC0(devc, devc->tconst);
	FUNC0(devc, DSP_CMD_SPKOFF);
	if (devc->channels == 1)
		FUNC0(devc, 0xa0 | bits);	/* Mono input */
	else
		FUNC0(devc, 0xa8 | bits);	/* Stereo input */
	FUNC2(&devc->lock, flags);

	devc->trigger_bits = 0;
	return 0;
}