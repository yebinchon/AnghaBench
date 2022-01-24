#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct probe_trace_arg {int /*<<< orphan*/ * ref; int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {scalar_t__ atom; unsigned int number; unsigned int number2; } ;
typedef  unsigned int Dwarf_Word ;
typedef  TYPE_1__ Dwarf_Op ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_external ; 
 int /*<<< orphan*/  DW_AT_location ; 
 scalar_t__ DW_OP_addr ; 
 scalar_t__ DW_OP_breg0 ; 
 scalar_t__ DW_OP_breg31 ; 
 scalar_t__ DW_OP_bregx ; 
 scalar_t__ DW_OP_fbreg ; 
 scalar_t__ DW_OP_reg0 ; 
 scalar_t__ DW_OP_reg31 ; 
 scalar_t__ DW_OP_regx ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOTSUP ; 
 int ERANGE ; 
 void* FUNC0 (long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**,size_t*,int) ; 
 char* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(Dwarf_Die *vr_die, Dwarf_Addr addr,
				     Dwarf_Op *fb_ops,
				     struct probe_trace_arg *tvar)
{
	Dwarf_Attribute attr;
	Dwarf_Op *op;
	size_t nops;
	unsigned int regn;
	Dwarf_Word offs = 0;
	bool ref = false;
	const char *regs;
	int ret;

	if (FUNC1(vr_die, DW_AT_external, &attr) != NULL)
		goto static_var;

	/* TODO: handle more than 1 exprs */
	if (FUNC1(vr_die, DW_AT_location, &attr) == NULL ||
	    FUNC3(&attr, addr, &op, &nops, 1) <= 0 ||
	    nops == 0) {
		/* TODO: Support const_value */
		return -ENOENT;
	}

	if (op->atom == DW_OP_addr) {
static_var:
		if (!tvar)
			return 0;
		/* Static variables on memory (not stack), make @varname */
		ret = FUNC9(FUNC2(vr_die));
		tvar->value = FUNC10(ret + 2);
		if (tvar->value == NULL)
			return -ENOMEM;
		FUNC7(tvar->value, ret + 2, "@%s", FUNC2(vr_die));
		tvar->ref = FUNC0((long)offs);
		if (tvar->ref == NULL)
			return -ENOMEM;
		return 0;
	}

	/* If this is based on frame buffer, set the offset */
	if (op->atom == DW_OP_fbreg) {
		if (fb_ops == NULL)
			return -ENOTSUP;
		ref = true;
		offs = op->number;
		op = &fb_ops[0];
	}

	if (op->atom >= DW_OP_breg0 && op->atom <= DW_OP_breg31) {
		regn = op->atom - DW_OP_breg0;
		offs += op->number;
		ref = true;
	} else if (op->atom >= DW_OP_reg0 && op->atom <= DW_OP_reg31) {
		regn = op->atom - DW_OP_reg0;
	} else if (op->atom == DW_OP_bregx) {
		regn = op->number;
		offs += op->number2;
		ref = true;
	} else if (op->atom == DW_OP_regx) {
		regn = op->number;
	} else {
		FUNC5("DW_OP %x is not supported.\n", op->atom);
		return -ENOTSUP;
	}

	if (!tvar)
		return 0;

	regs = FUNC4(regn);
	if (!regs) {
		/* This should be a bug in DWARF or this tool */
		FUNC6("Mapping for the register number %u "
			   "missing on this architecture.\n", regn);
		return -ERANGE;
	}

	tvar->value = FUNC8(regs);
	if (tvar->value == NULL)
		return -ENOMEM;

	if (ref) {
		tvar->ref = FUNC0((long)offs);
		if (tvar->ref == NULL)
			return -ENOMEM;
	}
	return 0;
}