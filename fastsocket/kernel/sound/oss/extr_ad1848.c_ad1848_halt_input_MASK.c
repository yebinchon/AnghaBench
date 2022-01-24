#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  audio_mode; } ;
typedef  TYPE_2__ ad1848_info ;
struct TYPE_10__ {TYPE_1__* dmap_in; scalar_t__ devc; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCM_ENABLE_INPUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 TYPE_4__** audio_devs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  isa_dma_bridge_buggy ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(int dev)
{
	ad1848_info    *devc = (ad1848_info *) audio_devs[dev]->devc;
	unsigned long   flags;

	if (!(FUNC1(devc, 9) & 0x02))
		return;		/* Capture not enabled */

	FUNC7(&devc->lock,flags);

	FUNC0(devc);

	{
		int             tmout;
		
		if(!isa_dma_bridge_buggy)
		        FUNC3(audio_devs[dev]->dmap_in->dma);

		for (tmout = 0; tmout < 100000; tmout++)
			if (FUNC1(devc, 11) & 0x10)
				break;
		FUNC2(devc, 9, FUNC1(devc, 9) & ~0x02);	/* Stop capture */

		if(!isa_dma_bridge_buggy)
		        FUNC4(audio_devs[dev]->dmap_in->dma);
		devc->audio_mode &= ~PCM_ENABLE_INPUT;
	}

	FUNC6(0, FUNC5(devc));	/* Clear interrupt status */
	FUNC6(0, FUNC5(devc));	/* Clear interrupt status */

	devc->audio_mode &= ~PCM_ENABLE_INPUT;

	FUNC8(&devc->lock,flags);
}