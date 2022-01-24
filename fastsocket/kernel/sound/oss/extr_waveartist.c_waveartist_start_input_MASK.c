#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int audio_format; int channels; } ;
typedef  TYPE_1__ wavnc_port_info ;
struct TYPE_6__ {int audio_mode; unsigned int xfer_count; } ;
typedef  TYPE_2__ wavnc_info ;
struct TYPE_7__ {int flags; scalar_t__ devc; scalar_t__ portc; } ;

/* Variables and functions */
 int AFMT_S16_BE ; 
 int AFMT_S16_LE ; 
 int DEBUG_IN ; 
 int DMA_AUTOMODE ; 
 int PCM_ENABLE_INPUT ; 
 int /*<<< orphan*/  WACMD_INPUTSIZE ; 
 TYPE_4__** audio_devs ; 
 int debug_flg ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  waveartist_lock ; 

__attribute__((used)) static void
FUNC4(int dev, unsigned long buf, int __count, int intrflag)
{
	wavnc_port_info *portc = (wavnc_port_info *) audio_devs[dev]->portc;
	wavnc_info	*devc = (wavnc_info *) audio_devs[dev]->devc;
	unsigned long	flags;
	unsigned int	count = __count;

	if (debug_flg & DEBUG_IN)
		FUNC0("waveartist: start input, buf=0x%lx, count=0x%x...\n",
			buf, count);

	if (portc->audio_format & (AFMT_S16_LE | AFMT_S16_BE))	/* 16 bit data */
		count >>= 1;

	if (portc->channels > 1)
		count >>= 1;

	count -= 1;

	if (devc->audio_mode & PCM_ENABLE_INPUT &&
	    audio_devs[dev]->flags & DMA_AUTOMODE &&
	    intrflag &&
	    count == devc->xfer_count) {
		devc->audio_mode |= PCM_ENABLE_INPUT;
		return;	/*
			 * Auto DMA mode on. No need to react
			 */
	}

	FUNC1(&waveartist_lock, flags);

	/*
	 * set sample count
	 */
	FUNC3(devc, WACMD_INPUTSIZE, count);

	devc->xfer_count = count;
	devc->audio_mode |= PCM_ENABLE_INPUT;

	FUNC2(&waveartist_lock, flags);
}