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
struct snd_seq_event {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct snd_seq_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

int FUNC1(int client, struct snd_seq_event * ev,
				  int atomic, int hop)
{
	return FUNC0(client, ev, NULL, 0, atomic, hop);
}