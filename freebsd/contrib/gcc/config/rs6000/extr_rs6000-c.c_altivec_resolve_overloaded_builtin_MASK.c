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
typedef  scalar_t__ tree ;
struct altivec_builtin_types {unsigned int code; scalar_t__ op1; scalar_t__ op2; scalar_t__ op3; } ;
struct TYPE_2__ {scalar_t__ (* types_compatible_p ) (scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned int ALTIVEC_BUILTIN_OVERLOADED_FIRST ; 
 unsigned int ALTIVEC_BUILTIN_OVERLOADED_LAST ; 
 unsigned int ALTIVEC_BUILTIN_VEC_STEP ; 
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ RS6000_BTI_NOT_OPAQUE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (scalar_t__*,int,struct altivec_builtin_types const*) ; 
 struct altivec_builtin_types* altivec_overloaded_builtins ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const_ptr_type_node ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 TYPE_1__ lang_hooks ; 
 int /*<<< orphan*/  ptr_type_node ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 

tree
FUNC24 (tree fndecl, tree arglist)
{
  unsigned int fcode = FUNC0 (fndecl);
  tree fnargs = FUNC7 (FUNC5 (fndecl));
  tree types[3], args[3];
  const struct altivec_builtin_types *desc;
  int n;

  if (fcode < ALTIVEC_BUILTIN_OVERLOADED_FIRST
      || fcode > ALTIVEC_BUILTIN_OVERLOADED_LAST)
    return NULL_TREE;

  for (n = 0;
       !FUNC11 (FUNC6 (fnargs)) && arglist;
       fnargs = FUNC2 (fnargs), arglist = FUNC2 (arglist), n++)
    {
      tree decl_type = FUNC6 (fnargs);
      tree arg = FUNC6 (arglist);
      tree type;

      if (arg == error_mark_node)
	return error_mark_node;

      if (n >= 3)
        FUNC12 ();

      arg = FUNC17 (arg);

      /* The C++ front-end converts float * to const void * using
	 NOP_EXPR<const void *> (NOP_EXPR<void *> (x)).  */
      type = FUNC5 (arg);
      if (FUNC1 (type)
	  && FUNC3 (arg) == NOP_EXPR
	  && lang_hooks.types_compatible_p (FUNC5 (arg),
					    const_ptr_type_node)
	  && lang_hooks.types_compatible_p (FUNC5 (FUNC4 (arg, 0)),
					    ptr_type_node))
	{
	  arg = FUNC4 (arg, 0);
          type = FUNC5 (arg);
	}

      /* Remove the const from the pointers to simplify the overload
	 matching further down.  */
      if (FUNC1 (decl_type)
	  && FUNC1 (type)
	  && FUNC8 (FUNC5 (type)) != 0)
	{
          if (FUNC9 (FUNC5 (type))
	      && !FUNC9 (FUNC5 (decl_type)))
	    FUNC23 (0, "passing arg %d of %qE discards qualifiers from"
		        "pointer target type", n + 1, fndecl);
	  type = FUNC15 (FUNC16 (FUNC5 (type),
							   0));
	  arg = FUNC19 (type, arg);
	}

      args[n] = arg;
      types[n] = type;
    }

  /* If the number of arguments did not match the prototype, return NULL
     and the generic code will issue the appropriate error message.  */
  if (!FUNC11 (FUNC6 (fnargs)) || arglist)
    return NULL;

  if (n == 0)
    FUNC12 ();

  if (fcode == ALTIVEC_BUILTIN_VEC_STEP)
    {
      if (FUNC3 (types[0]) != VECTOR_TYPE)
	goto bad;

      return FUNC14 (NULL_TREE, FUNC10 (types[0]));
    }

  for (desc = altivec_overloaded_builtins;
       desc->code && desc->code != fcode; desc++)
    continue;

  /* For arguments after the last, we have RS6000_BTI_NOT_OPAQUE in
     the opX fields.  */
  for (; desc->code == fcode; desc++)
    if ((desc->op1 == RS6000_BTI_NOT_OPAQUE
	 || FUNC20 (types[0], desc->op1))
	&& (desc->op2 == RS6000_BTI_NOT_OPAQUE
	    || FUNC20 (types[1], desc->op2))
	&& (desc->op3 == RS6000_BTI_NOT_OPAQUE
	    || FUNC20 (types[2], desc->op3)))
      return FUNC13 (args, n, desc);

 bad:
  FUNC18 ("invalid parameter combination for AltiVec intrinsic");
  return error_mark_node;
}