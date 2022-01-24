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
struct TYPE_9__ {scalar_t__ expires; } ;
struct TYPE_7__ {int /*<<< orphan*/  virtual; TYPE_5__ timer; } ;
typedef  TYPE_2__ snd_wavefront_midi_t ;
struct TYPE_6__ {TYPE_2__ midi; } ;
struct TYPE_8__ {TYPE_1__ wavefront; } ;
typedef  TYPE_3__ snd_wavefront_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	snd_wavefront_card_t *card = (snd_wavefront_card_t *)data;
	snd_wavefront_midi_t *midi = &card->wavefront.midi;
	unsigned long flags;
	
	FUNC2 (&midi->virtual, flags);
	midi->timer.expires = 1 + jiffies;
	FUNC0(&midi->timer);
	FUNC3 (&midi->virtual, flags);
	FUNC1(card);
}