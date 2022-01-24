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
struct snd_korg1212 {scalar_t__ dsp_stop_is_processed; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct snd_korg1212*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct snd_korg1212 *korg1212)
{
	unsigned long flags;
	FUNC1(&korg1212->lock, flags);
	korg1212->dsp_stop_is_processed = 0;
	FUNC0(korg1212);
	FUNC2(&korg1212->lock, flags);
	FUNC3(korg1212->wait, korg1212->dsp_stop_is_processed, (HZ * 3) / 2);
}