#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
typedef  TYPE_1__ expressionS ;
typedef  enum bfd_reloc_code_real { ____Placeholder_bfd_reloc_code_real } bfd_reloc_code_real ;
struct TYPE_9__ {int fr_literal; } ;

/* Variables and functions */
 int BFD_RELOC_SPU_PPU32 ; 
 int BFD_RELOC_SPU_PPU64 ; 
 scalar_t__ O_constant ; 
 scalar_t__ O_symbol ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int) ; 
 TYPE_2__* frag_now ; 
 char* input_line_pointer ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC8 (int nbytes)
{
  expressionS exp;

  if (FUNC6 ())
    {
      FUNC1 ();
      return;
    }

  do
    {
      FUNC0 (&exp);
      if ((exp.X_op == O_symbol
	   || exp.X_op == O_constant)
	  && FUNC7 (input_line_pointer, "@ppu", 4) == 0)
	{
	  char *p = FUNC5 (nbytes);
	  enum bfd_reloc_code_real reloc;

	  /* Check for identifier@suffix+constant.  */
	  input_line_pointer += 4;
	  if (*input_line_pointer == '-' || *input_line_pointer == '+')
	    {
	      expressionS new_exp;

	      FUNC3 (&new_exp);
	      if (new_exp.X_op == O_constant)
		exp.X_add_number += new_exp.X_add_number;
	    }

	  reloc = nbytes == 4 ? BFD_RELOC_SPU_PPU32 : BFD_RELOC_SPU_PPU64;
	  FUNC4 (frag_now, p - frag_now->fr_literal, nbytes,
		       &exp, 0, reloc);
	}
      else
	FUNC2 (&exp, nbytes);
    }
  while (*input_line_pointer++ == ',');

  /* Put terminator back into stream.  */
  input_line_pointer--;
  FUNC1 ();
}