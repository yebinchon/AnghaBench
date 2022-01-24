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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int DEBI_CMD_WRWORD ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  P_DEBIAD ; 
 int /*<<< orphan*/  P_DEBICMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, uint16_t addr, uint16_t wdata)
{

	/*  Set up DEBI control register value in shadow RAM. */
	FUNC1(P_DEBICMD, DEBI_CMD_WRWORD | addr);
	FUNC1(P_DEBIAD, wdata);

	/*  Execute the DEBI transfer. */
	FUNC0(dev);
}