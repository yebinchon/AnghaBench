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
typedef  int /*<<< orphan*/  tsubst_flags_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
#define  PARM_DECL 130 
#define  TEMPLATE_DECL 129 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int TREE_VEC ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int FUNC5 (scalar_t__) ; 
#define  TYPE_DECL 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC11 (tree parm_parms,
				tree arg_parms,
				tsubst_flags_t complain,
				tree in_decl,
				tree outer_args)
{
  int nparms, nargs, i;
  tree parm, arg;

  FUNC7 (FUNC1 (parm_parms) == TREE_VEC);
  FUNC7 (FUNC1 (arg_parms) == TREE_VEC);

  nparms = FUNC5 (parm_parms);
  nargs = FUNC5 (arg_parms);

  if (nargs != nparms)
    return 0;

  for (i = 0; i < nparms; ++i)
    {
      if (FUNC4 (parm_parms, i) == error_mark_node
          || FUNC4 (arg_parms, i) == error_mark_node)
        continue;

      parm = FUNC3 (FUNC4 (parm_parms, i));
      arg = FUNC3 (FUNC4 (arg_parms, i));

      if (arg == NULL_TREE || arg == error_mark_node
	  || parm == NULL_TREE || parm == error_mark_node)
	return 0;

      if (FUNC1 (arg) != FUNC1 (parm))
	return 0;

      switch (FUNC1 (parm))
	{
	case TYPE_DECL:
	  break;

	case TEMPLATE_DECL:
	  /* We encounter instantiations of templates like
	       template <template <template <class> class> class TT>
	       class C;  */
	  {
	    tree parmparm = FUNC0 (parm);
	    tree argparm = FUNC0 (arg);

	    if (!FUNC11
		(parmparm, argparm, complain, in_decl, outer_args))
	      return 0;
	  }
	  break;

	case PARM_DECL:
	  /* The tsubst call is used to handle cases such as

	       template <int> class C {};
	       template <class T, template <T> class TT> class D {};
	       D<int, C> d;

	     i.e. the parameter list of TT depends on earlier parameters.  */
	  if (!FUNC6 (FUNC2 (arg))
	      && !FUNC9
		    (FUNC10 (FUNC2 (parm), outer_args, complain, in_decl),
			     FUNC2 (arg)))
	    return 0;
	  break;

	default:
	  FUNC8 ();
	}
    }
  return 1;
}