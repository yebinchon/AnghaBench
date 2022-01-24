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
struct enc_private {int /*<<< orphan*/  MyCRA; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int CRAMSK_INDXPOL_A ; 
 int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, struct enc_private *k)
{
	register uint16_t cra;

	FUNC2("PulseIndex_A: pulse index enter\n");

	cra = FUNC0(dev, k->MyCRA);	/*  Pulse index. */
	FUNC1(dev, k->MyCRA, (uint16_t) (cra ^ CRAMSK_INDXPOL_A));
	FUNC2("PulseIndex_A: pulse index step1\n");
	FUNC1(dev, k->MyCRA, cra);
}