#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ word; } ;
struct TYPE_5__ {TYPE_3__ _xstart; int /*<<< orphan*/  xstarti; } ;
struct TYPE_4__ {int /*<<< orphan*/  config; } ;
struct newport_regs {TYPE_2__ set; TYPE_1__ cset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FONT_DATA ; 
 int MAX_NR_CONSOLES ; 
 int /*<<< orphan*/  NPORT_CFG_GD0 ; 
 int /*<<< orphan*/  TESTVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * font_data ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int newport_has_init ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct newport_regs*) ; 
 struct newport_regs* npregs ; 
 int /*<<< orphan*/  sgi_gfxaddr ; 

__attribute__((used)) static const char *FUNC6(void)
{
	int i;

	if (!sgi_gfxaddr)
		return NULL;

	if (!npregs)
		npregs = (struct newport_regs *)/* ioremap cannot fail */
			FUNC1(sgi_gfxaddr, sizeof(struct newport_regs));
	npregs->cset.config = NPORT_CFG_GD0;

	if (FUNC5(npregs))
		goto out_unmap;

	npregs->set.xstarti = TESTVAL;
	if (npregs->set._xstart.word != FUNC0(TESTVAL))
		goto out_unmap;

	for (i = 0; i < MAX_NR_CONSOLES; i++)
		font_data[i] = FONT_DATA;

	FUNC4();
	FUNC2();
	FUNC3();
	newport_has_init = 1;

	return "SGI Newport";

out_unmap:
	return NULL;
}