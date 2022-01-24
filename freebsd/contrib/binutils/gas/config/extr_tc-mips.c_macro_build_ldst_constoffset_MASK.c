#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
typedef  TYPE_1__ expressionS ;
struct TYPE_8__ {scalar_t__ noat; } ;

/* Variables and functions */
 char const* ADDRESS_ADD_INSN ; 
 int AT ; 
 int BFD_RELOC_LO16 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ O_constant ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 TYPE_3__ mips_opts ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9 (expressionS *ep, const char *op,
			      int treg, int breg, int dbl)
{
  FUNC5 (ep->X_op == O_constant);

  /* Sign-extending 32-bit constants makes their handling easier.  */
  if (!dbl)
    FUNC8 (ep);

  /* Right now, this routine can only handle signed 32-bit constants.  */
  if (! FUNC1(ep->X_add_number + 0x8000))
    FUNC4 (FUNC2("operand overflow"));

  if (FUNC0(ep->X_add_number))
    {
      /* Signed 16-bit offset will fit in the op.  Easy!  */
      FUNC6 (ep, op, "t,o(b)", treg, BFD_RELOC_LO16, breg);
    }
  else
    {
      /* 32-bit offset, need multiple instructions and AT, like:
	   lui      $tempreg,const_hi       (BFD_RELOC_HI16_S)
	   addu     $tempreg,$tempreg,$breg
           <op>     $treg,const_lo($tempreg)   (BFD_RELOC_LO16)
         to handle the complete offset.  */
      FUNC7 (ep, AT);
      FUNC6 (NULL, ADDRESS_ADD_INSN, "d,v,t", AT, AT, breg);
      FUNC6 (ep, op, "t,o(b)", treg, BFD_RELOC_LO16, AT);

      if (mips_opts.noat)
	FUNC3 (FUNC2("Macro used $at after \".set noat\""));
    }
}