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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ ASHIFT ; 
 scalar_t__ CONST ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ MEM ; 
 scalar_t__ MULT ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PIC_OFFSET_TABLE_REGNUM ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_MACHO ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_GOT ; 
 scalar_t__ UNSPEC_GOTOFF ; 
 scalar_t__ UNSPEC_GOTPCREL ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC7 (rtx orig_x)
{
  rtx x = orig_x;
  /* reg_addend is NULL or a multiple of some register.  */
  rtx reg_addend = NULL_RTX;
  /* const_addend is NULL or a const_int.  */
  rtx const_addend = NULL_RTX;
  /* This is the result, or NULL.  */
  rtx result = NULL_RTX;

  if (FUNC0 (x) == MEM)
    x = FUNC2 (x, 0);

  if (TARGET_64BIT)
    {
      if (FUNC0 (x) != CONST
	  || FUNC0 (FUNC2 (x, 0)) != UNSPEC
	  || FUNC3 (FUNC2 (x, 0), 1) != UNSPEC_GOTPCREL
	  || FUNC0 (orig_x) != MEM)
	return orig_x;
      return FUNC4 (FUNC2 (x, 0), 0, 0);
    }

  if (FUNC0 (x) != PLUS
      || FUNC0 (FUNC2 (x, 1)) != CONST)
    return orig_x;

  if (FUNC0 (FUNC2 (x, 0)) == REG
      && FUNC1 (FUNC2 (x, 0)) == PIC_OFFSET_TABLE_REGNUM)
    /* %ebx + GOT/GOTOFF */
    ;
  else if (FUNC0 (FUNC2 (x, 0)) == PLUS)
    {
      /* %ebx + %reg * scale + GOT/GOTOFF */
      reg_addend = FUNC2 (x, 0);
      if (FUNC0 (FUNC2 (reg_addend, 0)) == REG
	  && FUNC1 (FUNC2 (reg_addend, 0)) == PIC_OFFSET_TABLE_REGNUM)
	reg_addend = FUNC2 (reg_addend, 1);
      else if (FUNC0 (FUNC2 (reg_addend, 1)) == REG
	       && FUNC1 (FUNC2 (reg_addend, 1)) == PIC_OFFSET_TABLE_REGNUM)
	reg_addend = FUNC2 (reg_addend, 0);
      else
	return orig_x;
      if (FUNC0 (reg_addend) != REG
	  && FUNC0 (reg_addend) != MULT
	  && FUNC0 (reg_addend) != ASHIFT)
	return orig_x;
    }
  else
    return orig_x;

  x = FUNC2 (FUNC2 (x, 1), 0);
  if (FUNC0 (x) == PLUS
      && FUNC0 (FUNC2 (x, 1)) == CONST_INT)
    {
      const_addend = FUNC2 (x, 1);
      x = FUNC2 (x, 0);
    }

  if (FUNC0 (x) == UNSPEC
      && ((FUNC3 (x, 1) == UNSPEC_GOT && FUNC0 (orig_x) == MEM)
	  || (FUNC3 (x, 1) == UNSPEC_GOTOFF && FUNC0 (orig_x) != MEM)))
    result = FUNC4 (x, 0, 0);

  if (TARGET_MACHO && FUNC5 (x)
      && FUNC0 (orig_x) != MEM)
    result = FUNC2 (x, 0);

  if (! result)
    return orig_x;

  if (const_addend)
    result = FUNC6 (Pmode, result, const_addend);
  if (reg_addend)
    result = FUNC6 (Pmode, reg_addend, result);
  return result;
}