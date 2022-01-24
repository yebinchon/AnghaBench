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
typedef  int /*<<< orphan*/  u16 ;
struct snd_msndmidi {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ MIDQ; } ;

/* Variables and functions */
 scalar_t__ JQS_wHead ; 
 scalar_t__ JQS_wTail ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct snd_msndmidi *mpu)
{
	u16 tail;

	tail = FUNC0(mpu->dev->MIDQ + JQS_wTail);
	FUNC1(tail, mpu->dev->MIDQ + JQS_wHead);
}