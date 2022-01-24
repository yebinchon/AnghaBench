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
struct enc_private {int /*<<< orphan*/  (* SetLoadTrig ) (struct comedi_device*,struct enc_private*,int) ;int /*<<< orphan*/  (* PulseIndex ) (struct comedi_device*,struct enc_private*) ;} ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct enc_private*,unsigned int) ; 
 struct enc_private* encpriv ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct enc_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct enc_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct enc_private*,int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{

	struct enc_private *k = &encpriv[FUNC0(insn->chanspec)];

	FUNC1("s626_enc_insn_write: encoder write channel %d \n",
	      FUNC0(insn->chanspec));

	/*  Set the preload register */
	FUNC2(dev, k, data[0]);

	/*  Software index pulse forces the preload register to load */
	/*  into the counter */
	k->SetLoadTrig(dev, k, 0);
	k->PulseIndex(dev, k);
	k->SetLoadTrig(dev, k, 2);

	FUNC1("s626_enc_insn_write: End encoder write\n");

	return 1;
}