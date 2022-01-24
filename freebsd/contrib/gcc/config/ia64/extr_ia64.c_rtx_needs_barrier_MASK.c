#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct reg_flags {int is_write; int /*<<< orphan*/  is_sibcall; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int /*<<< orphan*/  write_count; } ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  ABS 232 
#define  AND 231 
 size_t AR_EC_REGNUM ; 
 size_t AR_PFS_REGNUM ; 
 int AR_UNAT_BIT_0 ; 
 int AR_UNAT_REGNUM ; 
#define  ASHIFT 230 
#define  ASHIFTRT 229 
#define  ASM_INPUT 228 
#define  ASM_OPERANDS 227 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  CALL 226 
#define  CLOBBER 225 
#define  COMPARE 224 
#define  COND_EXEC 223 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  CONST 222 
#define  CONST_DOUBLE 221 
#define  CONST_INT 220 
#define  CONST_VECTOR 219 
#define  DIV 218 
#define  EQ 217 
#define  FFS 216 
#define  FIX 215 
#define  FLOAT 214 
#define  FLOAT_EXTEND 213 
#define  FLOAT_TRUNCATE 212 
#define  GE 211 
 int const FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
#define  GEU 210 
#define  GT 209 
#define  GTU 208 
 int FUNC7 (int /*<<< orphan*/ ) ; 
#define  IOR 207 
#define  LABEL_REF 206 
#define  LE 205 
#define  LEU 204 
#define  LSHIFTRT 203 
#define  LT 202 
#define  LTU 201 
#define  MEM 200 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
#define  MINUS 199 
#define  MOD 198 
#define  MULT 197 
#define  NE 196 
#define  NEG 195 
#define  NOT 194 
#define  PARALLEL 193 
#define  PLUS 192 
#define  POPCOUNT 191 
#define  POST_DEC 190 
#define  POST_INC 189 
#define  POST_MODIFY 188 
 int /*<<< orphan*/  PR_REGS ; 
#define  REG 187 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 size_t REG_AR_CFM ; 
 size_t REG_RP ; 
 size_t REG_VOLATILE ; 
#define  RETURN 186 
#define  ROTATE 185 
#define  ROTATERT 184 
#define  SET 183 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
#define  SIGN_EXTEND 182 
#define  SMAX 181 
#define  SMIN 180 
#define  SQRT 179 
#define  SUBREG 178 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 177 
 int /*<<< orphan*/  TARGET_VOL_ASM_STOP ; 
#define  TRUNCATE 176 
#define  UDIV 175 
#define  UMAX 174 
#define  UMIN 173 
#define  UMOD 172 
#define  UNSIGNED_FIX 171 
#define  UNSIGNED_FLOAT 170 
#define  UNSPEC 169 
#define  UNSPECV_ALLOC 168 
#define  UNSPECV_BLOCKAGE 167 
#define  UNSPECV_BREAK 166 
#define  UNSPECV_INSN_GROUP_BARRIER 165 
#define  UNSPECV_PSAC_ALL 164 
#define  UNSPECV_PSAC_NORMAL 163 
#define  UNSPECV_SET_BSP 162 
#define  UNSPEC_ADDP4 161 
#define  UNSPEC_BSP_VALUE 160 
#define  UNSPEC_BUNDLE_SELECTOR 159 
#define  UNSPEC_CHKACLR 158 
#define  UNSPEC_CHKS 157 
#define  UNSPEC_CMPXCHG_ACQ 156 
#define  UNSPEC_COPYSIGN 155 
#define  UNSPEC_DTPREL 154 
#define  UNSPEC_FETCHADD_ACQ 153 
#define  UNSPEC_FLUSHRS 152 
#define  UNSPEC_FR_RECIP_APPROX 151 
#define  UNSPEC_FR_RESTORE 150 
#define  UNSPEC_FR_SPILL 149 
#define  UNSPEC_FR_SQRT_RECIP_APPROX 148 
#define  UNSPEC_GETF_EXP 147 
#define  UNSPEC_GR_RESTORE 146 
#define  UNSPEC_GR_SPILL 145 
#define  UNSPEC_LDA 144 
#define  UNSPEC_LDS 143 
#define  UNSPEC_LDSA 142 
#define  UNSPEC_LTOFF_DTPMOD 141 
#define  UNSPEC_LTOFF_DTPREL 140 
#define  UNSPEC_LTOFF_TPREL 139 
#define  UNSPEC_MF 138 
#define  UNSPEC_PIC_CALL 137 
#define  UNSPEC_PRED_REL_MUTEX 136 
#define  UNSPEC_SETF_EXP 135 
#define  UNSPEC_SHRP 134 
#define  UNSPEC_TPREL 133 
#define  UNSPEC_VOLATILE 132 
#define  USE 131 
#define  VEC_SELECT 130 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int const FUNC15 (int /*<<< orphan*/ ,int) ; 
#define  XOR 129 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
#define  ZERO_EXTEND 128 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (int /*<<< orphan*/ ,struct reg_flags,int) ; 
 int FUNC21 (size_t,struct reg_flags,int) ; 
 TYPE_1__* rws_insn ; 
 int FUNC22 (int /*<<< orphan*/ ,struct reg_flags,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct reg_flags*) ; 

__attribute__((used)) static int
FUNC24 (rtx x, struct reg_flags flags, int pred)
{
  int i, j;
  int is_complemented = 0;
  int need_barrier = 0;
  const char *format_ptr;
  struct reg_flags new_flags;
  rtx cond;

  if (! x)
    return 0;

  new_flags = flags;

  switch (FUNC4 (x))
    {
    case SET:
      FUNC23 (x, &new_flags);
      need_barrier = FUNC22 (x, new_flags, pred);
      if (FUNC4 (FUNC12 (x)) != CALL)
	{
	  new_flags.is_write = 1;
	  need_barrier |= FUNC24 (FUNC11 (x), new_flags, pred);
	}
      break;

    case CALL:
      new_flags.is_write = 0;
      need_barrier |= FUNC21 (AR_EC_REGNUM, new_flags, pred);

      /* Avoid multiple register writes, in case this is a pattern with
	 multiple CALL rtx.  This avoids a failure in rws_access_reg.  */
      if (! flags.is_sibcall && ! rws_insn[REG_AR_CFM].write_count)
	{
	  new_flags.is_write = 1;
	  need_barrier |= FUNC21 (REG_RP, new_flags, pred);
	  need_barrier |= FUNC21 (AR_PFS_REGNUM, new_flags, pred);
	  need_barrier |= FUNC21 (REG_AR_CFM, new_flags, pred);
	}
      break;

    case COND_EXEC:
      /* X is a predicated instruction.  */

      cond = FUNC3 (x);
      FUNC18 (!pred);
      need_barrier = FUNC24 (cond, flags, 0);

      if (FUNC4 (cond) == EQ)
	is_complemented = 1;
      cond = FUNC14 (cond, 0);
      FUNC18 (FUNC4 (cond) == REG
		  && FUNC10 (FUNC9 (cond)) == PR_REGS);
      pred = FUNC9 (cond);
      if (is_complemented)
	++pred;

      need_barrier |= FUNC24 (FUNC2 (x), flags, pred);
      return need_barrier;

    case CLOBBER:
    case USE:
      /* Clobber & use are for earlier compiler-phases only.  */
      break;

    case ASM_OPERANDS:
    case ASM_INPUT:
      /* We always emit stop bits for traditional asms.  We emit stop bits
	 for volatile extended asms if TARGET_VOL_ASM_STOP is true.  */
      if (FUNC4 (x) != ASM_OPERANDS
	  || (FUNC8 (x) && TARGET_VOL_ASM_STOP))
	{
	  /* Avoid writing the register multiple times if we have multiple
	     asm outputs.  This avoids a failure in rws_access_reg.  */
	  if (! rws_insn[REG_VOLATILE].write_count)
	    {
	      new_flags.is_write = 1;
	      FUNC21 (REG_VOLATILE, new_flags, pred);
	    }
	  return 1;
	}

      /* For all ASM_OPERANDS, we must traverse the vector of input operands.
	 We cannot just fall through here since then we would be confused
	 by the ASM_INPUT rtx inside ASM_OPERANDS, which do not indicate
	 traditional asms unlike their normal usage.  */

      for (i = FUNC1 (x) - 1; i >= 0; --i)
	if (FUNC24 (FUNC0 (x, i), flags, pred))
	  need_barrier = 1;
      break;

    case PARALLEL:
      for (i = FUNC17 (x, 0) - 1; i >= 0; --i)
	{
	  rtx pat = FUNC16 (x, 0, i);
	  switch (FUNC4 (pat))
	    {
	    case SET:
	      FUNC23 (pat, &new_flags);
	      need_barrier |= FUNC22 (pat, new_flags, pred);
	      break;

	    case USE:
	    case CALL:
	    case ASM_OPERANDS:
	      need_barrier |= FUNC24 (pat, flags, pred);
	      break;

	    case CLOBBER:
	    case RETURN:
	      break;

	    default:
	      FUNC19 ();
	    }
	}
      for (i = FUNC17 (x, 0) - 1; i >= 0; --i)
	{
	  rtx pat = FUNC16 (x, 0, i);
	  if (FUNC4 (pat) == SET)
	    {
	      if (FUNC4 (FUNC12 (pat)) != CALL)
		{
		  new_flags.is_write = 1;
		  need_barrier |= FUNC24 (FUNC11 (pat), new_flags,
						     pred);
		}
	    }
	  else if (FUNC4 (pat) == CLOBBER || FUNC4 (pat) == RETURN)
	    need_barrier |= FUNC24 (pat, flags, pred);
	}
      break;

    case SUBREG:
      need_barrier |= FUNC24 (FUNC13 (x), flags, pred);
      break;
    case REG:
      if (FUNC9 (x) == AR_UNAT_REGNUM)
	{
	  for (i = 0; i < 64; ++i)
	    need_barrier |= FUNC21 (AR_UNAT_BIT_0 + i, flags, pred);
	}
      else
	need_barrier = FUNC20 (x, flags, pred);
      break;

    case MEM:
      /* Find the regs used in memory address computation.  */
      new_flags.is_write = 0;
      need_barrier = FUNC24 (FUNC14 (x, 0), new_flags, pred);
      break;

    case CONST_INT:   case CONST_DOUBLE:  case CONST_VECTOR:
    case SYMBOL_REF:  case LABEL_REF:     case CONST:
      break;

      /* Operators with side-effects.  */
    case POST_INC:    case POST_DEC:
      FUNC18 (FUNC4 (FUNC14 (x, 0)) == REG);

      new_flags.is_write = 0;
      need_barrier  = FUNC20 (FUNC14 (x, 0), new_flags, pred);
      new_flags.is_write = 1;
      need_barrier |= FUNC20 (FUNC14 (x, 0), new_flags, pred);
      break;

    case POST_MODIFY:
      FUNC18 (FUNC4 (FUNC14 (x, 0)) == REG);

      new_flags.is_write = 0;
      need_barrier  = FUNC20 (FUNC14 (x, 0), new_flags, pred);
      need_barrier |= FUNC24 (FUNC14 (x, 1), new_flags, pred);
      new_flags.is_write = 1;
      need_barrier |= FUNC20 (FUNC14 (x, 0), new_flags, pred);
      break;

      /* Handle common unary and binary ops for efficiency.  */
    case COMPARE:  case PLUS:    case MINUS:   case MULT:      case DIV:
    case MOD:      case UDIV:    case UMOD:    case AND:       case IOR:
    case XOR:      case ASHIFT:  case ROTATE:  case ASHIFTRT:  case LSHIFTRT:
    case ROTATERT: case SMIN:    case SMAX:    case UMIN:      case UMAX:
    case NE:       case EQ:      case GE:      case GT:        case LE:
    case LT:       case GEU:     case GTU:     case LEU:       case LTU:
      need_barrier = FUNC24 (FUNC14 (x, 0), new_flags, pred);
      need_barrier |= FUNC24 (FUNC14 (x, 1), new_flags, pred);
      break;

    case NEG:      case NOT:	        case SIGN_EXTEND:     case ZERO_EXTEND:
    case TRUNCATE: case FLOAT_EXTEND:   case FLOAT_TRUNCATE:  case FLOAT:
    case FIX:      case UNSIGNED_FLOAT: case UNSIGNED_FIX:    case ABS:
    case SQRT:     case FFS:		case POPCOUNT:
      need_barrier = FUNC24 (FUNC14 (x, 0), flags, pred);
      break;

    case VEC_SELECT:
      /* VEC_SELECT's second argument is a PARALLEL with integers that
	 describe the elements selected.  On ia64, those integers are
	 always constants.  Avoid walking the PARALLEL so that we don't
	 get confused with "normal" parallels and then die.  */
      need_barrier = FUNC24 (FUNC14 (x, 0), flags, pred);
      break;

    case UNSPEC:
      switch (FUNC15 (x, 1))
	{
	case UNSPEC_LTOFF_DTPMOD:
	case UNSPEC_LTOFF_DTPREL:
	case UNSPEC_DTPREL:
	case UNSPEC_LTOFF_TPREL:
	case UNSPEC_TPREL:
	case UNSPEC_PRED_REL_MUTEX:
	case UNSPEC_PIC_CALL:
        case UNSPEC_MF:
        case UNSPEC_FETCHADD_ACQ:
	case UNSPEC_BSP_VALUE:
	case UNSPEC_FLUSHRS:
	case UNSPEC_BUNDLE_SELECTOR:
          break;

	case UNSPEC_GR_SPILL:
	case UNSPEC_GR_RESTORE:
	  {
	    HOST_WIDE_INT offset = FUNC7 (FUNC16 (x, 0, 1));
	    HOST_WIDE_INT bit = (offset >> 3) & 63;

	    need_barrier = FUNC24 (FUNC16 (x, 0, 0), flags, pred);
	    new_flags.is_write = (FUNC15 (x, 1) == UNSPEC_GR_SPILL);
	    need_barrier |= FUNC21 (AR_UNAT_BIT_0 + bit,
					      new_flags, pred);
	    break;
	  }

	case UNSPEC_FR_SPILL:
	case UNSPEC_FR_RESTORE:
	case UNSPEC_GETF_EXP:
	case UNSPEC_SETF_EXP:
        case UNSPEC_ADDP4:
	case UNSPEC_FR_SQRT_RECIP_APPROX:
	case UNSPEC_LDA:
	case UNSPEC_LDS:
	case UNSPEC_LDSA:
	case UNSPEC_CHKACLR:
        case UNSPEC_CHKS:
	  need_barrier = FUNC24 (FUNC16 (x, 0, 0), flags, pred);
	  break;

	case UNSPEC_FR_RECIP_APPROX:
	case UNSPEC_SHRP:
	case UNSPEC_COPYSIGN:
	  need_barrier = FUNC24 (FUNC16 (x, 0, 0), flags, pred);
	  need_barrier |= FUNC24 (FUNC16 (x, 0, 1), flags, pred);
	  break;

        case UNSPEC_CMPXCHG_ACQ:
	  need_barrier = FUNC24 (FUNC16 (x, 0, 1), flags, pred);
	  need_barrier |= FUNC24 (FUNC16 (x, 0, 2), flags, pred);
	  break;

	default:
	  FUNC19 ();
	}
      break;

    case UNSPEC_VOLATILE:
      switch (FUNC15 (x, 1))
	{
	case UNSPECV_ALLOC:
	  /* Alloc must always be the first instruction of a group.
	     We force this by always returning true.  */
	  /* ??? We might get better scheduling if we explicitly check for
	     input/local/output register dependencies, and modify the
	     scheduler so that alloc is always reordered to the start of
	     the current group.  We could then eliminate all of the
	     first_instruction code.  */
	  FUNC21 (AR_PFS_REGNUM, flags, pred);

	  new_flags.is_write = 1;
	  FUNC21 (REG_AR_CFM, new_flags, pred);
	  return 1;

	case UNSPECV_SET_BSP:
	  need_barrier = 1;
          break;

	case UNSPECV_BLOCKAGE:
	case UNSPECV_INSN_GROUP_BARRIER:
	case UNSPECV_BREAK:
	case UNSPECV_PSAC_ALL:
	case UNSPECV_PSAC_NORMAL:
	  return 0;

	default:
	  FUNC19 ();
	}
      break;

    case RETURN:
      new_flags.is_write = 0;
      need_barrier  = FUNC21 (REG_RP, flags, pred);
      need_barrier |= FUNC21 (AR_PFS_REGNUM, flags, pred);

      new_flags.is_write = 1;
      need_barrier |= FUNC21 (AR_EC_REGNUM, new_flags, pred);
      need_barrier |= FUNC21 (REG_AR_CFM, new_flags, pred);
      break;

    default:
      format_ptr = FUNC5 (FUNC4 (x));
      for (i = FUNC6 (FUNC4 (x)) - 1; i >= 0; i--)
	switch (format_ptr[i])
	  {
	  case '0':	/* unused field */
	  case 'i':	/* integer */
	  case 'n':	/* note */
	  case 'w':	/* wide integer */
	  case 's':	/* pointer to string */
	  case 'S':	/* optional pointer to string */
	    break;

	  case 'e':
	    if (FUNC24 (FUNC14 (x, i), flags, pred))
	      need_barrier = 1;
	    break;

	  case 'E':
	    for (j = FUNC17 (x, i) - 1; j >= 0; --j)
	      if (FUNC24 (FUNC16 (x, i, j), flags, pred))
		need_barrier = 1;
	    break;

	  default:
	    FUNC19 ();
	  }
      break;
    }
  return need_barrier;
}