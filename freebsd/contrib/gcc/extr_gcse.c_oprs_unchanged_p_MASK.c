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
struct reg_avail_info {int /*<<< orphan*/  first_set; int /*<<< orphan*/  last_set; int /*<<< orphan*/  last_bb; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  ADDR_DIFF_VEC 145 
#define  ADDR_VEC 144 
#define  CC0 143 
#define  CONST 142 
#define  CONST_DOUBLE 141 
#define  CONST_INT 140 
#define  CONST_VECTOR 139 
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  LABEL_REF 138 
#define  MEM 137 
#define  PC 136 
#define  POST_DEC 135 
#define  POST_INC 134 
#define  POST_MODIFY 133 
#define  PRE_DEC 132 
#define  PRE_INC 131 
#define  PRE_MODIFY 130 
#define  REG 129 
 size_t FUNC4 (scalar_t__) ; 
#define  SYMBOL_REF 128 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 
 int FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  current_bb ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct reg_avail_info* reg_avail_info ; 

__attribute__((used)) static int
FUNC9 (rtx x, rtx insn, int avail_p)
{
  int i, j;
  enum rtx_code code;
  const char *fmt;

  if (x == 0)
    return 1;

  code = FUNC0 (x);
  switch (code)
    {
    case REG:
      {
	struct reg_avail_info *info = &reg_avail_info[FUNC4 (x)];

	if (info->last_bb != current_bb)
	  return 1;
	if (avail_p)
	  return info->last_set < FUNC3 (insn);
	else
	  return info->first_set >= FUNC3 (insn);
      }

    case MEM:
      if (FUNC8 (current_bb, FUNC3 (insn),
				  x, avail_p))
	return 0;
      else
	return FUNC9 (FUNC5 (x, 0), insn, avail_p);

    case PRE_DEC:
    case PRE_INC:
    case POST_DEC:
    case POST_INC:
    case PRE_MODIFY:
    case POST_MODIFY:
      return 0;

    case PC:
    case CC0: /*FIXME*/
    case CONST:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case SYMBOL_REF:
    case LABEL_REF:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
      return 1;

    default:
      break;
    }

  for (i = FUNC2 (code) - 1, fmt = FUNC1 (code); i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  /* If we are about to do the last recursive call needed at this
	     level, change it into iteration.  This function is called enough
	     to be worth it.  */
	  if (i == 0)
	    return FUNC9 (FUNC5 (x, i), insn, avail_p);

	  else if (! FUNC9 (FUNC5 (x, i), insn, avail_p))
	    return 0;
	}
      else if (fmt[i] == 'E')
	for (j = 0; j < FUNC7 (x, i); j++)
	  if (! FUNC9 (FUNC6 (x, i, j), insn, avail_p))
	    return 0;
    }

  return 1;
}