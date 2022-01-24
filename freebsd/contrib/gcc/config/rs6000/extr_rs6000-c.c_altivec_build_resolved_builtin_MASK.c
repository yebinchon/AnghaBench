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
struct altivec_builtin_types {size_t overloaded_code; scalar_t__ code; int /*<<< orphan*/  ret_type; } ;

/* Variables and functions */
 size_t ALTIVEC_BUILTIN_VCMPGEFP_P ; 
 scalar_t__ ALTIVEC_BUILTIN_VCMPGE_P ; 
 int /*<<< orphan*/  BIT_XOR_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rs6000_builtin_decls ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC10 (tree *args, int n,
				const struct altivec_builtin_types *desc)
{
  tree impl_fndecl = rs6000_builtin_decls[desc->overloaded_code];
  tree ret_type = FUNC8 (desc->ret_type);
  tree argtypes = FUNC3 (FUNC1 (impl_fndecl));
  tree arglist = NULL_TREE, arg_type[3];

  int i;
  for (i = 0; i < n; i++)
    arg_type[i] = FUNC2 (argtypes), argtypes = FUNC0 (argtypes);

  /* The AltiVec overloading implementation is overall gross, but this
     is particularly disgusting.  The vec_{all,any}_{ge,le} builtins
     are completely different for floating-point vs. integer vector
     types, because the former has vcmpgefp, but the latter should use
     vcmpgtXX.

     In practice, the second and third arguments are swapped, and the
     condition (LT vs. EQ, which is recognizable by bit 1 of the first
     argument) is reversed.  Patch the arguments here before building
     the resolved CALL_EXPR.  */
  if (desc->code == ALTIVEC_BUILTIN_VCMPGE_P
      && desc->overloaded_code != ALTIVEC_BUILTIN_VCMPGEFP_P)
    {
      tree t;
      t = args[2], args[2] = args[1], args[1] = t;
      t = arg_type[2], arg_type[2] = arg_type[1], arg_type[1] = t;
      
      args[0] = FUNC6 (BIT_XOR_EXPR, FUNC1 (args[0]), args[0],
			     FUNC5 (NULL_TREE, 2));
    }

  while (--n >= 0)
    arglist = FUNC9 (NULL_TREE,
			 FUNC7 (arg_type[n], args[n]),
			 arglist);

  return FUNC7 (ret_type,
		       FUNC4 (impl_fndecl, arglist));
}