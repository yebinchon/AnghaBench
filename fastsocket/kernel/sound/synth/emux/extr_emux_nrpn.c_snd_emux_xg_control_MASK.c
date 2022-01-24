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
struct snd_midi_channel {int /*<<< orphan*/ * control; } ;
struct snd_emux_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMUX_FX_FLAG_ADD ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_emux_port*,struct snd_midi_channel*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xg_effects ; 

int
FUNC2(struct snd_emux_port *port, struct snd_midi_channel *chan,
		    int param)
{
	return FUNC1(xg_effects, FUNC0(xg_effects),
				     port, chan, param,
				     chan->control[param],
				     EMUX_FX_FLAG_ADD);
}