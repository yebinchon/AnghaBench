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
struct TYPE_2__ {scalar_t__ expires; } ;
struct snd_emu8k_pcm {int* panning; int timer_running; int /*<<< orphan*/  timer_lock; TYPE_1__ timer; int /*<<< orphan*/  pitch; struct snd_emu8000* emu; } ;
struct snd_emu8000 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct snd_emu8k_pcm *rec, int ch)
{
	unsigned long flags;
	struct snd_emu8000 *hw = rec->emu;
	unsigned int temp, aux;
	int pt = FUNC7(rec->pitch);

	/* cutoff and volume */
	FUNC3(hw, ch, 0xff00);
	FUNC5(hw, ch, 0xffff);
	FUNC1(hw, ch, 0xffff);
	/* trigger envelope */
	FUNC2(hw, ch, 0x7f7f);
	/* set reverb and pitch target */
	temp = 0; // reverb
	if (rec->panning[ch] == 0)
		aux = 0xff;
	else
		aux = (-rec->panning[ch]) & 0xff;
	temp = (temp << 8) | (pt << 16) | aux;
	FUNC4(hw, ch, temp);
	FUNC0(hw, ch, pt << 16);

	/* start timer */
	FUNC8(&rec->timer_lock, flags);
	if (! rec->timer_running) {
		rec->timer.expires = jiffies + 1;
		FUNC6(&rec->timer);
		rec->timer_running = 1;
	}
	FUNC9(&rec->timer_lock, flags);
}