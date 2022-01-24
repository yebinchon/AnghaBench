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
typedef  scalar_t__ tree ;
struct z_candidate {int dummy; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
#define  ARRAY_REF 158 
#define  BIT_AND_EXPR 157 
#define  BIT_IOR_EXPR 156 
#define  BIT_NOT_EXPR 155 
#define  BIT_XOR_EXPR 154 
 scalar_t__ BOOLEAN_TYPE ; 
#define  COND_EXPR 153 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ ENUMERAL_TYPE ; 
#define  EQ_EXPR 152 
 scalar_t__ FUNCTION_TYPE ; 
#define  GE_EXPR 151 
#define  GT_EXPR 150 
#define  INDIRECT_REF 149 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
#define  LE_EXPR 148 
#define  LSHIFT_EXPR 147 
#define  LT_EXPR 146 
#define  MAX_EXPR 145 
#define  MEMBER_REF 144 
#define  MINUS_EXPR 143 
#define  MIN_EXPR 142 
#define  MODIFY_EXPR 141 
#define  MULT_EXPR 140 
#define  NEGATE_EXPR 139 
#define  NE_EXPR 138 
#define  NOP_EXPR 137 
#define  PLUS_EXPR 136 
 scalar_t__ POINTER_TYPE ; 
#define  POSTDECREMENT_EXPR 135 
#define  POSTINCREMENT_EXPR 134 
#define  PREDECREMENT_EXPR 133 
#define  PREINCREMENT_EXPR 132 
 scalar_t__ REFERENCE_TYPE ; 
#define  RSHIFT_EXPR 131 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
#define  TRUNC_DIV_EXPR 130 
#define  TRUNC_MOD_EXPR 129 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
#define  UNARY_PLUS_EXPR 128 
 int /*<<< orphan*/  FUNC13 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ integer_type_node ; 
 scalar_t__ integer_zero_node ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ ptrdiff_type_node ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 

__attribute__((used)) static void
FUNC21 (struct z_candidate **candidates, enum tree_code code,
		       enum tree_code code2, tree fnname, tree type1,
		       tree type2, tree *args, tree *argtypes, int flags)
{
  switch (code)
    {
    case POSTINCREMENT_EXPR:
    case POSTDECREMENT_EXPR:
      args[1] = integer_zero_node;
      type2 = integer_type_node;
      break;
    default:
      break;
    }

  switch (code)
    {

/* 4 For every pair T, VQ), where T is an arithmetic or  enumeration  type,
     and  VQ  is  either  volatile or empty, there exist candidate operator
     functions of the form
	     VQ T&   operator++(VQ T&);
	     T       operator++(VQ T&, int);
   5 For every pair T, VQ), where T is an enumeration type or an arithmetic
     type  other than bool, and VQ is either volatile or empty, there exist
     candidate operator functions of the form
	     VQ T&   operator--(VQ T&);
	     T       operator--(VQ T&, int);
   6 For every pair T, VQ), where T is  a  cv-qualified  or  cv-unqualified
     complete  object type, and VQ is either volatile or empty, there exist
     candidate operator functions of the form
	     T*VQ&   operator++(T*VQ&);
	     T*VQ&   operator--(T*VQ&);
	     T*      operator++(T*VQ&, int);
	     T*      operator--(T*VQ&, int);  */

    case POSTDECREMENT_EXPR:
    case PREDECREMENT_EXPR:
      if (FUNC4 (type1) == BOOLEAN_TYPE)
	return;
    case POSTINCREMENT_EXPR:
    case PREINCREMENT_EXPR:
      if (FUNC0 (type1) || FUNC10 (type1))
	{
	  type1 = FUNC14 (type1);
	  break;
	}
      return;

/* 7 For every cv-qualified or cv-unqualified complete object type T, there
     exist candidate operator functions of the form

	     T&      operator*(T*);

   8 For every function type T, there exist candidate operator functions of
     the form
	     T&      operator*(T*);  */

    case INDIRECT_REF:
      if (FUNC4 (type1) == POINTER_TYPE
	  && (FUNC10 (type1)
	      || FUNC4 (FUNC5 (type1)) == FUNCTION_TYPE))
	break;
      return;

/* 9 For every type T, there exist candidate operator functions of the form
	     T*      operator+(T*);

   10For  every  promoted arithmetic type T, there exist candidate operator
     functions of the form
	     T       operator+(T);
	     T       operator-(T);  */

    case UNARY_PLUS_EXPR: /* unary + */
      if (FUNC4 (type1) == POINTER_TYPE)
	break;
    case NEGATE_EXPR:
      if (FUNC0 (type1))
	break;
      return;

/* 11For every promoted integral type T,  there  exist  candidate  operator
     functions of the form
	     T       operator~(T);  */

    case BIT_NOT_EXPR:
      if (FUNC2 (type1))
	break;
      return;

/* 12For every quintuple C1, C2, T, CV1, CV2), where C2 is a class type, C1
     is the same type as C2 or is a derived class of C2, T  is  a  complete
     object type or a function type, and CV1 and CV2 are cv-qualifier-seqs,
     there exist candidate operator functions of the form
	     CV12 T& operator->*(CV1 C1*, CV2 T C2::*);
     where CV12 is the union of CV1 and CV2.  */

    case MEMBER_REF:
      if (FUNC4 (type1) == POINTER_TYPE
	  && FUNC12 (type2))
	{
	  tree c1 = FUNC5 (type1);
	  tree c2 = FUNC7 (type2);

	  if (FUNC3 (c1) && FUNC1 (c2, c1)
	      && (FUNC6 (type2)
		  || FUNC16 (FUNC9 (type2))))
	    break;
	}
      return;

/* 13For every pair of promoted arithmetic types L and R, there exist  can-
     didate operator functions of the form
	     LR      operator*(L, R);
	     LR      operator/(L, R);
	     LR      operator+(L, R);
	     LR      operator-(L, R);
	     bool    operator<(L, R);
	     bool    operator>(L, R);
	     bool    operator<=(L, R);
	     bool    operator>=(L, R);
	     bool    operator==(L, R);
	     bool    operator!=(L, R);
     where  LR  is  the  result of the usual arithmetic conversions between
     types L and R.

   14For every pair of types T and I, where T  is  a  cv-qualified  or  cv-
     unqualified  complete  object  type and I is a promoted integral type,
     there exist candidate operator functions of the form
	     T*      operator+(T*, I);
	     T&      operator[](T*, I);
	     T*      operator-(T*, I);
	     T*      operator+(I, T*);
	     T&      operator[](I, T*);

   15For every T, where T is a pointer to complete object type, there exist
     candidate operator functions of the form112)
	     ptrdiff_t operator-(T, T);

   16For every pointer or enumeration type T, there exist candidate operator
     functions of the form
	     bool    operator<(T, T);
	     bool    operator>(T, T);
	     bool    operator<=(T, T);
	     bool    operator>=(T, T);
	     bool    operator==(T, T);
	     bool    operator!=(T, T);

   17For every pointer to member type T,  there  exist  candidate  operator
     functions of the form
	     bool    operator==(T, T);
	     bool    operator!=(T, T);  */

    case MINUS_EXPR:
      if (FUNC10 (type1) && FUNC10 (type2))
	break;
      if (FUNC10 (type1) && FUNC2 (type2))
	{
	  type2 = ptrdiff_type_node;
	  break;
	}
    case MULT_EXPR:
    case TRUNC_DIV_EXPR:
      if (FUNC0 (type1) && FUNC0 (type2))
	break;
      return;

    case EQ_EXPR:
    case NE_EXPR:
      if ((FUNC6 (type1) && FUNC6 (type2))
	  || (FUNC8 (type1) && FUNC8 (type2)))
	break;
      if (FUNC12 (type1) && FUNC17 (args[1]))
	{
	  type2 = type1;
	  break;
	}
      if (FUNC12 (type2) && FUNC17 (args[0]))
	{
	  type1 = type2;
	  break;
	}
      /* Fall through.  */
    case LT_EXPR:
    case GT_EXPR:
    case LE_EXPR:
    case GE_EXPR:
    case MAX_EXPR:
    case MIN_EXPR:
      if (FUNC0 (type1) && FUNC0 (type2))
	break;
      if (FUNC11 (type1) && FUNC11 (type2))
	break;
      if (FUNC4 (type1) == ENUMERAL_TYPE 
	  && FUNC4 (type2) == ENUMERAL_TYPE)
	break;
      if (FUNC11 (type1) 
	  && FUNC17 (args[1])
	  && !FUNC20 (type1))
	{
	  type2 = type1;
	  break;
	}
      if (FUNC17 (args[0]) 
	  && FUNC11 (type2)
	  && !FUNC20 (type2))
	{
	  type1 = type2;
	  break;
	}
      return;

    case PLUS_EXPR:
      if (FUNC0 (type1) && FUNC0 (type2))
	break;
    case ARRAY_REF:
      if (FUNC2 (type1) && FUNC10 (type2))
	{
	  type1 = ptrdiff_type_node;
	  break;
	}
      if (FUNC10 (type1) && FUNC2 (type2))
	{
	  type2 = ptrdiff_type_node;
	  break;
	}
      return;

/* 18For  every pair of promoted integral types L and R, there exist candi-
     date operator functions of the form
	     LR      operator%(L, R);
	     LR      operator&(L, R);
	     LR      operator^(L, R);
	     LR      operator|(L, R);
	     L       operator<<(L, R);
	     L       operator>>(L, R);
     where LR is the result of the  usual  arithmetic  conversions  between
     types L and R.  */

    case TRUNC_MOD_EXPR:
    case BIT_AND_EXPR:
    case BIT_IOR_EXPR:
    case BIT_XOR_EXPR:
    case LSHIFT_EXPR:
    case RSHIFT_EXPR:
      if (FUNC2 (type1) && FUNC2 (type2))
	break;
      return;

/* 19For  every  triple  L, VQ, R), where L is an arithmetic or enumeration
     type, VQ is either volatile or empty, and R is a  promoted  arithmetic
     type, there exist candidate operator functions of the form
	     VQ L&   operator=(VQ L&, R);
	     VQ L&   operator*=(VQ L&, R);
	     VQ L&   operator/=(VQ L&, R);
	     VQ L&   operator+=(VQ L&, R);
	     VQ L&   operator-=(VQ L&, R);

   20For  every  pair T, VQ), where T is any type and VQ is either volatile
     or empty, there exist candidate operator functions of the form
	     T*VQ&   operator=(T*VQ&, T*);

   21For every pair T, VQ), where T is a pointer to member type and  VQ  is
     either  volatile or empty, there exist candidate operator functions of
     the form
	     VQ T&   operator=(VQ T&, T);

   22For every triple  T,  VQ,  I),  where  T  is  a  cv-qualified  or  cv-
     unqualified  complete object type, VQ is either volatile or empty, and
     I is a promoted integral type, there exist  candidate  operator  func-
     tions of the form
	     T*VQ&   operator+=(T*VQ&, I);
	     T*VQ&   operator-=(T*VQ&, I);

   23For  every  triple  L,  VQ,  R), where L is an integral or enumeration
     type, VQ is either volatile or empty, and R  is  a  promoted  integral
     type, there exist candidate operator functions of the form

	     VQ L&   operator%=(VQ L&, R);
	     VQ L&   operator<<=(VQ L&, R);
	     VQ L&   operator>>=(VQ L&, R);
	     VQ L&   operator&=(VQ L&, R);
	     VQ L&   operator^=(VQ L&, R);
	     VQ L&   operator|=(VQ L&, R);  */

    case MODIFY_EXPR:
      switch (code2)
	{
	case PLUS_EXPR:
	case MINUS_EXPR:
	  if (FUNC10 (type1) && FUNC2 (type2))
	    {
	      type2 = ptrdiff_type_node;
	      break;
	    }
	case MULT_EXPR:
	case TRUNC_DIV_EXPR:
	  if (FUNC0 (type1) && FUNC0 (type2))
	    break;
	  return;

	case TRUNC_MOD_EXPR:
	case BIT_AND_EXPR:
	case BIT_IOR_EXPR:
	case BIT_XOR_EXPR:
	case LSHIFT_EXPR:
	case RSHIFT_EXPR:
	  if (FUNC2 (type1) && FUNC2 (type2))
	    break;
	  return;

	case NOP_EXPR:
	  if (FUNC0 (type1) && FUNC0 (type2))
	    break;
	  if ((FUNC6 (type1) && FUNC6 (type2))
	      || (FUNC11 (type1) && FUNC11 (type2))
	      || (FUNC8 (type1) && FUNC8 (type2))
	      || ((FUNC6 (type1)
		   || FUNC4 (type1) == POINTER_TYPE)
		  && FUNC17 (args[1])))
	    {
	      type2 = type1;
	      break;
	    }
	  return;

	default:
	  FUNC15 ();
	}
      type1 = FUNC14 (type1);
      break;

    case COND_EXPR:
      /* [over.built]

	 For every pair of promoted arithmetic types L and R, there
	 exist candidate operator functions of the form

	 LR operator?(bool, L, R);

	 where LR is the result of the usual arithmetic conversions
	 between types L and R.

	 For every type T, where T is a pointer or pointer-to-member
	 type, there exist candidate operator functions of the form T
	 operator?(bool, T, T);  */

      if (FUNC18 (type1)
	  && FUNC18 (type2))
	/* That's OK.  */
	break;

      /* Otherwise, the types should be pointers.  */
      if (!(FUNC11 (type1) || FUNC12 (type1))
	  || !(FUNC11 (type2) || FUNC12 (type2)))
	return;

      /* We don't check that the two types are the same; the logic
	 below will actually create two candidates; one in which both
	 parameter types are TYPE1, and one in which both parameter
	 types are TYPE2.  */
      break;

    default:
      FUNC15 ();
    }

  /* If we're dealing with two pointer types or two enumeral types,
     we need candidates for both of them.  */
  if (type2 && !FUNC19 (type1, type2)
      && FUNC4 (type1) == FUNC4 (type2)
      && (FUNC4 (type1) == REFERENCE_TYPE
	  || (FUNC11 (type1) && FUNC11 (type2))
	  || (FUNC8 (type1) && FUNC8 (type2))
	  || FUNC6 (type1)
	  || FUNC3 (type1)
	  || FUNC4 (type1) == ENUMERAL_TYPE))
    {
      FUNC13
	(candidates, fnname, type1, type1, args, argtypes, flags);
      FUNC13
	(candidates, fnname, type2, type2, args, argtypes, flags);
      return;
    }

  FUNC13
    (candidates, fnname, type1, type2, args, argtypes, flags);
}