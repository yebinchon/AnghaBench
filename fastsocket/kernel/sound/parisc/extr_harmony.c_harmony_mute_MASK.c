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
struct snd_harmony {int /*<<< orphan*/  mixer_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HARMONY_GAINCTL ; 
 int /*<<< orphan*/  HARMONY_GAIN_SILENCE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_harmony*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct snd_harmony *h)
{
	unsigned long flags;

	FUNC2(&h->mixer_lock, flags);
	FUNC0(h);
	FUNC1(h, HARMONY_GAINCTL, HARMONY_GAIN_SILENCE);
	FUNC3(&h->mixer_lock, flags);
}