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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  dump_info_p ;

/* Variables and functions */
#define  ADDR_EXPR 165 
#define  ARRAY_REF 164 
#define  BIT_AND_EXPR 163 
#define  BIT_IOR_EXPR 162 
#define  BIT_NOT_EXPR 161 
#define  BIT_XOR_EXPR 160 
#define  CALL_EXPR 159 
#define  COMPONENT_REF 158 
#define  COMPOUND_EXPR 157 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  DELETE_EXPR 156 
#define  EQ_EXPR 155 
#define  GE_EXPR 154 
#define  GT_EXPR 153 
#define  INDIRECT_REF 152 
#define  LE_EXPR 151 
#define  LSHIFT_EXPR 150 
#define  LT_EXPR 149 
#define  MEMBER_REF 148 
#define  MINUS_EXPR 147 
#define  MULT_EXPR 146 
#define  NEGATE_EXPR 145 
#define  NEW_EXPR 144 
#define  NE_EXPR 143 
#define  NOP_EXPR 142 
#define  PLUS_EXPR 141 
#define  POSTDECREMENT_EXPR 140 
#define  POSTINCREMENT_EXPR 139 
#define  PREDECREMENT_EXPR 138 
#define  PREINCREMENT_EXPR 137 
#define  RSHIFT_EXPR 136 
#define  TRUNC_DIV_EXPR 135 
#define  TRUNC_MOD_EXPR 134 
#define  TRUTH_ANDIF_EXPR 133 
#define  TRUTH_NOT_EXPR 132 
#define  TRUTH_ORIF_EXPR 131 
#define  UNARY_PLUS_EXPR 130 
#define  VEC_DELETE_EXPR 129 
#define  VEC_NEW_EXPR 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3 (dump_info_p di, tree t)
{
  switch (FUNC1 (t)) {
    case NEW_EXPR:
      FUNC2 (di, "new");
      break;
    case VEC_NEW_EXPR:
      FUNC2 (di, "vecnew");
      break;
    case DELETE_EXPR:
      FUNC2 (di, "delete");
      break;
    case VEC_DELETE_EXPR:
      FUNC2 (di, "vecdelete");
      break;
    case UNARY_PLUS_EXPR:
      FUNC2 (di, "pos");
      break;
    case NEGATE_EXPR:
      FUNC2 (di, "neg");
      break;
    case ADDR_EXPR:
      FUNC2 (di, "addr");
      break;
    case INDIRECT_REF:
      FUNC2(di, "deref");
      break;
    case BIT_NOT_EXPR:
      FUNC2(di, "not");
      break;
    case TRUTH_NOT_EXPR:
      FUNC2(di, "lnot");
      break;
    case PREINCREMENT_EXPR:
      FUNC2(di, "preinc");
      break;
    case PREDECREMENT_EXPR:
      FUNC2(di, "predec");
      break;
    case PLUS_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "plusassign");
      else
	FUNC2(di, "plus");
      break;
    case MINUS_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "minusassign");
      else
	FUNC2(di, "minus");
      break;
    case MULT_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "multassign");
      else
	FUNC2 (di, "mult");
      break;
    case TRUNC_DIV_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "divassign");
      else
	FUNC2 (di, "div");
      break;
    case TRUNC_MOD_EXPR:
      if (FUNC0 (t))
	 FUNC2 (di, "modassign");
      else
	FUNC2 (di, "mod");
      break;
    case BIT_AND_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "andassign");
      else
	FUNC2 (di, "and");
      break;
    case BIT_IOR_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "orassign");
      else
	FUNC2 (di, "or");
      break;
    case BIT_XOR_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "xorassign");
      else
	FUNC2 (di, "xor");
      break;
    case LSHIFT_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "lshiftassign");
      else
	FUNC2 (di, "lshift");
      break;
    case RSHIFT_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "rshiftassign");
      else
	FUNC2 (di, "rshift");
      break;
    case EQ_EXPR:
      FUNC2 (di, "eq");
      break;
    case NE_EXPR:
      FUNC2 (di, "ne");
      break;
    case LT_EXPR:
      FUNC2 (di, "lt");
      break;
    case GT_EXPR:
      FUNC2 (di, "gt");
      break;
    case LE_EXPR:
      FUNC2 (di, "le");
      break;
    case GE_EXPR:
      FUNC2 (di, "ge");
      break;
    case TRUTH_ANDIF_EXPR:
      FUNC2 (di, "land");
      break;
    case TRUTH_ORIF_EXPR:
      FUNC2 (di, "lor");
      break;
    case COMPOUND_EXPR:
      FUNC2 (di, "compound");
      break;
    case MEMBER_REF:
      FUNC2 (di, "memref");
      break;
    case COMPONENT_REF:
      FUNC2 (di, "ref");
      break;
    case ARRAY_REF:
      FUNC2 (di, "subs");
      break;
    case POSTINCREMENT_EXPR:
      FUNC2 (di, "postinc");
      break;
    case POSTDECREMENT_EXPR:
      FUNC2 (di, "postdec");
      break;
    case CALL_EXPR:
      FUNC2 (di, "call");
      break;
    case NOP_EXPR:
      if (FUNC0 (t))
	FUNC2 (di, "assign");
      break;
    default:
      break;
  }
}