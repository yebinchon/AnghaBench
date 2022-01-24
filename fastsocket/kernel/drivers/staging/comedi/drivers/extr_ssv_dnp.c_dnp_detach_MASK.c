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
struct comedi_device {int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSCDR ; 
 int /*<<< orphan*/  CSCIR ; 
 int PAMR ; 
 int PBMR ; 
 int PCMR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{

	/* configure all ports as input (default)                                  */
	FUNC1(PAMR, CSCIR);
	FUNC1(0x00, CSCDR);
	FUNC1(PBMR, CSCIR);
	FUNC1(0x00, CSCDR);
	FUNC1(PCMR, CSCIR);
	FUNC1((FUNC0(CSCDR) & 0xAA), CSCDR);

	/* announce that we are finished                                           */
	FUNC2("comedi%d: dnp: remove\n", dev->minor);

	return 0;

}