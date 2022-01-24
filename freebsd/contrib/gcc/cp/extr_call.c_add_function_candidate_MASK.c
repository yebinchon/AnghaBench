#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct z_candidate {int dummy; } ;
struct TYPE_6__ {int ellipsis_p; int this_p; scalar_t__ bad_p; } ;
typedef  TYPE_1__ conversion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct z_candidate* FUNC9 (struct z_candidate**,scalar_t__,scalar_t__,int,TYPE_1__**,scalar_t__,scalar_t__,int) ; 
 TYPE_1__** FUNC10 (int) ; 
 TYPE_1__* FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 TYPE_1__* FUNC15 (scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ void_list_node ; 

__attribute__((used)) static struct z_candidate *
FUNC20 (struct z_candidate **candidates,
			tree fn, tree ctype, tree arglist,
			tree access_path, tree conversion_path,
			int flags)
{
  tree parmlist = FUNC7 (FUNC5 (fn));
  int i, len;
  conversion **convs;
  tree parmnode, argnode;
  tree orig_arglist;
  int viable = 1;

  /* At this point we should not see any functions which haven't been
     explicitly declared, except for friend functions which will have
     been found using argument dependent lookup.  */
  FUNC14 (!FUNC0 (fn) || FUNC2 (fn));

  /* The `this', `in_chrg' and VTT arguments to constructors are not
     considered in overload resolution.  */
  if (FUNC1 (fn))
    {
      parmlist = FUNC18 (fn, parmlist);
      orig_arglist = arglist;
      arglist = FUNC18 (fn, arglist);
    }
  else
    orig_arglist = arglist;

  len = FUNC16 (arglist);
  convs = FUNC10 (len);

  /* 13.3.2 - Viable functions [over.match.viable]
     First, to be a viable function, a candidate function shall have enough
     parameters to agree in number with the arguments in the list.

     We need to check this first; otherwise, checking the ICSes might cause
     us to produce an ill-formed template instantiation.  */

  parmnode = parmlist;
  for (i = 0; i < len; ++i)
    {
      if (parmnode == NULL_TREE || parmnode == void_list_node)
	break;
      parmnode = FUNC4 (parmnode);
    }

  if (i < len && parmnode)
    viable = 0;

  /* Make sure there are default args for the rest of the parms.  */
  else if (!FUNC19 (parmnode))
    viable = 0;

  if (! viable)
    goto out;

  /* Second, for F to be a viable function, there shall exist for each
     argument an implicit conversion sequence that converts that argument
     to the corresponding parameter of F.  */

  parmnode = parmlist;
  argnode = arglist;

  for (i = 0; i < len; ++i)
    {
      tree arg = FUNC6 (argnode);
      tree argtype = FUNC17 (arg);
      conversion *t;
      int is_this;

      if (parmnode == void_list_node)
	break;

      is_this = (i == 0 && FUNC3 (fn)
		 && ! FUNC1 (fn));

      if (parmnode)
	{
	  tree parmtype = FUNC6 (parmnode);

	  /* The type of the implicit object parameter ('this') for
	     overload resolution is not always the same as for the
	     function itself; conversion functions are considered to
	     be members of the class being converted, and functions
	     introduced by a using-declaration are considered to be
	     members of the class that uses them.

	     Since build_over_call ignores the ICS for the `this'
	     parameter, we can just change the parm type.  */
	  if (ctype && is_this)
	    {
	      parmtype
		= FUNC13 (ctype,
					FUNC8 (FUNC5 (parmtype)));
	      parmtype = FUNC12 (parmtype);
	    }

	  t = FUNC15 (parmtype, argtype, arg,
				   /*c_cast_p=*/false, flags);
	}
      else
	{
	  t = FUNC11 (argtype, arg);
	  t->ellipsis_p = true;
	}

      if (t && is_this)
	t->this_p = true;

      convs[i] = t;
      if (! t)
	{
	  viable = 0;
	  break;
	}

      if (t->bad_p)
	viable = -1;

      if (parmnode)
	parmnode = FUNC4 (parmnode);
      argnode = FUNC4 (argnode);
    }

 out:
  return FUNC9 (candidates, fn, orig_arglist, len, convs,
			access_path, conversion_path, viable);
}