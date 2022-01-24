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
typedef  int uint16_t ;
struct enc_private {int /*<<< orphan*/  MyCRB; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int CRBMSK_INDXPOL_B ; 
 int CRBMSK_INTCTRL ; 
 int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, struct enc_private *k)
{
	register uint16_t crb;

	crb = FUNC0(dev, k->MyCRB) & ~CRBMSK_INTCTRL;	/*  Pulse index. */
	FUNC1(dev, k->MyCRB, (uint16_t) (crb ^ CRBMSK_INDXPOL_B));
	FUNC1(dev, k->MyCRB, crb);
}