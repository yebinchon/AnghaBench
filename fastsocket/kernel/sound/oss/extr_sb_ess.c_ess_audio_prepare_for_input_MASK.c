#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int channels; scalar_t__ trigger_bits; } ;
typedef  TYPE_1__ sb_devc ;
struct TYPE_9__ {TYPE_1__* devc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_CMD_SPKOFF ; 
 TYPE_7__** audio_devs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ess_inp_cmds ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int dev, int bsize, int bcount)
{
	sb_devc *devc = audio_devs[dev]->devc;

	FUNC2(devc, 1);

	FUNC4(devc, DSP_CMD_SPKOFF);

	FUNC3 (devc, 0xb8, 0x0e);	/* Auto init DMA mode */
	FUNC0 (devc, 0xa8, 0x03, 3 - devc->channels);	/* Mono/stereo */
	FUNC3 (devc, 0xb9, 2);	/* Demand mode (4 bytes/DMA request) */

	FUNC1 (devc, ess_inp_cmds);

	FUNC0 (devc, 0xb1, 0xf0, 0x50);
	FUNC0 (devc, 0xb2, 0xf0, 0x50);

	devc->trigger_bits = 0;
	return 0;
}