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
typedef  size_t uint8_t ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * trimadrs ; 
 int /*<<< orphan*/  trimchan ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	register uint8_t i;

	/*  Copy TrimDac setpoint values from EEPROM to TrimDacs. */
	for (i = 0; i < FUNC0(trimchan); i++)
		FUNC2(dev, i, FUNC1(dev, trimadrs[i]));
}