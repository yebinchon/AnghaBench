#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int tconst; scalar_t__ trigger_bits; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ sb_devc ;
struct TYPE_5__ {TYPE_1__* devc; } ;

/* Variables and functions */
 int DSP_CMD_SPKOFF ; 
 TYPE_3__** audio_devs ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(int dev, int bsize, int bcount)
{
	sb_devc *devc = audio_devs[dev]->devc;
	unsigned long flags;

	FUNC1(&devc->lock, flags);
	if (FUNC0(devc, 0x40))
		FUNC0(devc, devc->tconst);
	FUNC0(devc, DSP_CMD_SPKOFF);
	FUNC2(&devc->lock, flags);

	devc->trigger_bits = 0;
	return 0;
}