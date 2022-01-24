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
typedef  enum cgen_operand_type { ____Placeholder_cgen_operand_type } cgen_operand_type ;
typedef  unsigned long bfd_vma ;
typedef  int /*<<< orphan*/  CGEN_CPU_DESC ;

/* Variables and functions */
 int BFD_RELOC_MEP_TPREL7 ; 
 int BFD_RELOC_MEP_TPREL7A2 ; 
 int BFD_RELOC_MEP_TPREL7A4 ; 
#define  MEP_OPERAND_UDISP7 130 
#define  MEP_OPERAND_UDISP7A2 129 
#define  MEP_OPERAND_UDISP7A4 128 
 char const* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const**,int,int,int /*<<< orphan*/ *,unsigned long*) ; 
 char const* FUNC3 (int /*<<< orphan*/ ,char const**,int,unsigned long*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static const char *
FUNC5 (CGEN_CPU_DESC cd, const char **strp,
		 enum cgen_operand_type opindex, unsigned long *valuep)
{
  const char *errmsg;
  bfd_vma value;

  /* fprintf(stderr, "dj: unsigned7 parse `%s'\n", *strp); */

  if (FUNC4 (*strp, "%tpoff(", 7) == 0)
    {
      int reloc;
      *strp += 7;
      switch (opindex)
	{
	case MEP_OPERAND_UDISP7:
	  reloc = BFD_RELOC_MEP_TPREL7;
	  break;
	case MEP_OPERAND_UDISP7A2:
	  reloc = BFD_RELOC_MEP_TPREL7A2;
	  break;
	case MEP_OPERAND_UDISP7A4:
	  reloc = BFD_RELOC_MEP_TPREL7A4;
	  break;
	default:
	  /* Safe assumption?  */
	  FUNC1 (); 
	}
      errmsg = FUNC2 (cd, strp, opindex, reloc,
				   NULL, &value);
      if (**strp != ')')
	return "missing `)'";
      ++*strp;
      *valuep = value;
      return errmsg;
    }

  if (**strp == '%')
    return FUNC0("invalid %function() here");

  return FUNC3 (cd, strp, opindex, valuep);
}