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
struct sonicvibes {int /*<<< orphan*/  irqmask; } ;
struct snd_mpu401 {struct sonicvibes* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQMASK ; 
 int /*<<< orphan*/  SV_MIDI_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sonicvibes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_mpu401 * mpu)
{
	struct sonicvibes *sonic = mpu->private_data;
	FUNC1(sonic->irqmask |= SV_MIDI_MASK, FUNC0(sonic, IRQMASK));
}