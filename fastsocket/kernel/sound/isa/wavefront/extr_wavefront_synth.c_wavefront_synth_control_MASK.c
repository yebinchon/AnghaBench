#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wavefront_patch_info ;
struct TYPE_10__ {int* rbuf; int* wbuf; int status; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ wavefront_control ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_11__ {int interrupts_are_midi; int rom_samples_rdonly; int* sample_status; int debug; int /*<<< orphan*/  freemem; int /*<<< orphan*/  control_port; } ;
typedef  TYPE_2__ snd_wavefront_t ;
struct TYPE_12__ {TYPE_2__ wavefront; } ;
typedef  TYPE_3__ snd_wavefront_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  WFC_DEBUG_DRIVER 142 
#define  WFC_DISABLE_INTERRUPTS 141 
#define  WFC_ENABLE_INTERRUPTS 140 
#define  WFC_IDENTIFY_SLOT_TYPE 139 
#define  WFC_INTERRUPT_STATUS 138 
#define  WFC_REPORT_FREE_MEMORY 137 
#define  WFC_ROMSAMPLES_RDONLY 136 
#define  WFC_UPLOAD_EDRUM_PROGRAM 135 
#define  WFC_UPLOAD_MULTISAMPLE 134 
#define  WFC_UPLOAD_PATCH 133 
#define  WFC_UPLOAD_PROGRAM 132 
#define  WFC_UPLOAD_SAMPLE_ALIAS 131 
#define  WFC_UPLOAD_SAMPLE_HEADER 130 
#define  WFC_VMIDI_OFF 129 
#define  WFC_VMIDI_ON 128 
 int /*<<< orphan*/  WF_DEBUG_CMD ; 
 int /*<<< orphan*/  WF_DRUM_BYTES ; 
 int WF_MAX_SAMPLE ; 
 int /*<<< orphan*/  WF_PATCH_BYTES ; 
 int /*<<< orphan*/  WF_PROGRAM_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12 (snd_wavefront_card_t *acard, 
			 wavefront_control *wc)

{
	snd_wavefront_t *dev = &acard->wavefront;
	unsigned char patchnumbuf[2];
	int i;

	FUNC0 (WF_DEBUG_CMD, "synth control with "
		"cmd 0x%x\n", wc->cmd);

	/* Pre-handling of or for various commands */

	switch (wc->cmd) {
		
	case WFC_DISABLE_INTERRUPTS:
		FUNC7 ("interrupts disabled.\n");
		FUNC5 (0x80|0x20, dev->control_port);
		dev->interrupts_are_midi = 1;
		return 0;

	case WFC_ENABLE_INTERRUPTS:
		FUNC7 ("interrupts enabled.\n");
		FUNC5 (0x80|0x40|0x20, dev->control_port);
		dev->interrupts_are_midi = 1;
		return 0;

	case WFC_INTERRUPT_STATUS:
		wc->rbuf[0] = dev->interrupts_are_midi;
		return 0;

	case WFC_ROMSAMPLES_RDONLY:
		dev->rom_samples_rdonly = wc->wbuf[0];
		wc->status = 0;
		return 0;

	case WFC_IDENTIFY_SLOT_TYPE:
		i = wc->wbuf[0] | (wc->wbuf[1] << 7);
		if (i <0 || i >= WF_MAX_SAMPLE) {
			FUNC7 ("invalid slot ID %d\n",
				i);
			wc->status = EINVAL;
			return -EINVAL;
		}
		wc->rbuf[0] = dev->sample_status[i];
		wc->status = 0;
		return 0;

	case WFC_DEBUG_DRIVER:
		dev->debug = wc->wbuf[0];
		FUNC7 ("debug = 0x%x\n", dev->debug);
		return 0;

	case WFC_UPLOAD_PATCH:
		FUNC4 (*((u32 *) wc->wbuf), patchnumbuf, 2);
		FUNC3 (wc->wbuf, patchnumbuf, 2);
		break;

	case WFC_UPLOAD_MULTISAMPLE:
		/* multisamples have to be handled differently, and
		   cannot be dealt with properly by snd_wavefront_cmd() alone.
		*/
		wc->status = FUNC11
			(dev, (wavefront_patch_info *) wc->rbuf);
		return 0;

	case WFC_UPLOAD_SAMPLE_ALIAS:
		FUNC7 ("support for sample alias upload "
			"being considered.\n");
		wc->status = EINVAL;
		return -EINVAL;
	}

	wc->status = FUNC8 (dev, wc->cmd, wc->rbuf, wc->wbuf);

	/* Post-handling of certain commands.

	   In particular, if the command was an upload, demunge the data
	   so that the user-level doesn't have to think about it.
	*/

	if (wc->status == 0) {
		switch (wc->cmd) {
			/* intercept any freemem requests so that we know
			   we are always current with the user-level view
			   of things.
			*/

		case WFC_REPORT_FREE_MEMORY:
			dev->freemem = FUNC2 (wc->rbuf, 4);
			break;

		case WFC_UPLOAD_PATCH:
			FUNC1 (wc->rbuf, wc->rbuf, WF_PATCH_BYTES);
			break;

		case WFC_UPLOAD_PROGRAM:
			FUNC1 (wc->rbuf, wc->rbuf, WF_PROGRAM_BYTES);
			break;

		case WFC_UPLOAD_EDRUM_PROGRAM:
			FUNC1 (wc->rbuf, wc->rbuf, WF_DRUM_BYTES - 1);
			break;

		case WFC_UPLOAD_SAMPLE_HEADER:
			FUNC6 (wc->rbuf);
			break;

		case WFC_UPLOAD_SAMPLE_ALIAS:
			FUNC7 ("support for "
				    "sample aliases still "
				    "being considered.\n");
			break;

		case WFC_VMIDI_OFF:
			FUNC9 (acard);
			break;

		case WFC_VMIDI_ON:
			FUNC10 (acard);
			break;
		}
	}

	return 0;
}