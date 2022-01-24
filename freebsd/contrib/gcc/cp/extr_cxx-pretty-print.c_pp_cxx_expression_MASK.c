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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
#define  AGGR_INIT_EXPR 175 
#define  ALIGNOF_EXPR 174 
#define  ARROW_EXPR 173 
#define  BASELINK 172 
#define  CALL_EXPR 171 
#define  CAST_EXPR 170 
#define  COND_EXPR 169 
#define  CONST_CAST_EXPR 168 
#define  CONST_DECL 167 
#define  DELETE_EXPR 166 
#define  DOTSTAR_EXPR 165 
#define  DYNAMIC_CAST_EXPR 164 
#define  EMPTY_CLASS_EXPR 163 
#define  FIELD_DECL 162 
#define  FUNCTION_DECL 161 
#define  INIT_EXPR 160 
#define  INTEGER_CST 159 
#define  MEMBER_REF 158 
#define  MODIFY_EXPR 157 
#define  MODOP_EXPR 156 
#define  MULT_EXPR 155 
#define  MUST_NOT_THROW_EXPR 154 
#define  NEW_EXPR 153 
#define  NON_DEPENDENT_EXPR 152 
#define  OFFSET_REF 151 
#define  OVERLOAD 150 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PARM_DECL 149 
#define  PSEUDO_DTOR_EXPR 148 
#define  PTRMEM_CST 147 
#define  REAL_CST 146 
#define  REINTERPRET_CAST_EXPR 145 
#define  RESULT_DECL 144 
#define  SCOPE_REF 143 
#define  SIZEOF_EXPR 142 
#define  STATIC_CAST_EXPR 141 
#define  STMT_EXPR 140 
#define  STRING_CST 139 
#define  TEMPLATE_DECL 138 
#define  TEMPLATE_PARM_INDEX 137 
#define  TEMPLATE_TEMPLATE_PARM 136 
#define  TEMPLATE_TYPE_PARM 135 
#define  THROW_EXPR 134 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  TRUNC_DIV_EXPR 133 
#define  TRUNC_MOD_EXPR 132 
#define  TYPEID_EXPR 131 
#define  VAR_DECL 130 
#define  VEC_DELETE_EXPR 129 
#define  VEC_NEW_EXPR 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC1 (t))
    {
    case STRING_CST:
    case INTEGER_CST:
    case REAL_CST:
      FUNC7 (pp, t);
      break;

    case RESULT_DECL:
      FUNC16 (pp, t);
      break;

#if 0
    case OFFSET_REF:
#endif
    case SCOPE_REF:
    case PTRMEM_CST:
      FUNC14 (pp, t);
      break;

    case OVERLOAD:
      t = FUNC0 (t);
    case VAR_DECL:
    case PARM_DECL:
    case FIELD_DECL:
    case CONST_DECL:
    case FUNCTION_DECL:
    case BASELINK:
    case TEMPLATE_DECL:
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_PARM_INDEX:
    case TEMPLATE_TEMPLATE_PARM:
    case STMT_EXPR:
      FUNC13 (pp, t);
      break;

    case CALL_EXPR:
    case DYNAMIC_CAST_EXPR:
    case STATIC_CAST_EXPR:
    case REINTERPRET_CAST_EXPR:
    case CONST_CAST_EXPR:
#if 0
    case MEMBER_REF:
#endif
    case EMPTY_CLASS_EXPR:
    case TYPEID_EXPR:
    case PSEUDO_DTOR_EXPR:
    case AGGR_INIT_EXPR:
    case ARROW_EXPR:
      FUNC12 (pp, t);
      break;

    case NEW_EXPR:
    case VEC_NEW_EXPR:
      FUNC10 (pp, t);
      break;

    case DELETE_EXPR:
    case VEC_DELETE_EXPR:
      FUNC8 (pp, t);
      break;

    case SIZEOF_EXPR:
    case ALIGNOF_EXPR:
      FUNC15 (pp, t);
      break;

    case CAST_EXPR:
      FUNC5 (pp, t);
      break;

    case OFFSET_REF:
    case MEMBER_REF:
    case DOTSTAR_EXPR:
      FUNC11 (pp, t);
      break;

    case MULT_EXPR:
    case TRUNC_DIV_EXPR:
    case TRUNC_MOD_EXPR:
      FUNC9 (pp, t);
      break;

    case COND_EXPR:
      FUNC6 (pp, t);
      break;

    case MODIFY_EXPR:
    case INIT_EXPR:
    case THROW_EXPR:
    case MODOP_EXPR:
      FUNC4 (pp, t);
      break;

    case NON_DEPENDENT_EXPR:
    case MUST_NOT_THROW_EXPR:
      FUNC17 (pp, t);
      break;

    default:
      FUNC3 (FUNC2 (pp), t);
      break;
    }
}