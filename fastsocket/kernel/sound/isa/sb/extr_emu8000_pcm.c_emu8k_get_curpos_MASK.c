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
struct snd_emu8k_pcm {int* loop_start; int /*<<< orphan*/  emu; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC1(struct snd_emu8k_pcm *rec, int ch)
{
	int val = FUNC0(rec->emu, ch) & 0xfffffff;
	val -= rec->loop_start[ch] - 1;
	return val;
}