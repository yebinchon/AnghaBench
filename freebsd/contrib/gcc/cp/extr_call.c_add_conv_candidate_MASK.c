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
struct z_candidate {scalar_t__ fn; } ;
struct TYPE_6__ {int ellipsis_p; scalar_t__ bad_p; } ;
typedef  TYPE_1__ conversion ;

/* Variables and functions */
 scalar_t__ FUNCTION_TYPE ; 
 int LOOKUP_NORMAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct z_candidate* FUNC5 (struct z_candidate**,scalar_t__,scalar_t__,int,TYPE_1__**,scalar_t__,scalar_t__,int) ; 
 TYPE_1__** FUNC6 (int) ; 
 TYPE_1__* FUNC7 (scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC8 (scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ void_list_node ; 

__attribute__((used)) static struct z_candidate *
FUNC12 (struct z_candidate **candidates, tree fn, tree obj,
		    tree arglist, tree access_path, tree conversion_path)
{
  tree totype = FUNC2 (FUNC2 (fn));
  int i, len, viable, flags;
  tree parmlist, parmnode, argnode;
  conversion **convs;

  for (parmlist = totype; FUNC1 (parmlist) != FUNCTION_TYPE; )
    parmlist = FUNC2 (parmlist);
  parmlist = FUNC4 (parmlist);

  len = FUNC9 (arglist) + 1;
  convs = FUNC6 (len);
  parmnode = parmlist;
  argnode = arglist;
  viable = 1;
  flags = LOOKUP_NORMAL;

  /* Don't bother looking up the same type twice.  */
  if (*candidates && (*candidates)->fn == totype)
    return NULL;

  for (i = 0; i < len; ++i)
    {
      tree arg = i == 0 ? obj : FUNC3 (argnode);
      tree argtype = FUNC10 (arg);
      conversion *t;

      if (i == 0)
	t = FUNC8 (totype, argtype, arg, /*c_cast_p=*/false,
				 flags);
      else if (parmnode == void_list_node)
	break;
      else if (parmnode)
	t = FUNC8 (FUNC3 (parmnode), argtype, arg,
				 /*c_cast_p=*/false, flags);
      else
	{
	  t = FUNC7 (argtype, arg);
	  t->ellipsis_p = true;
	}

      convs[i] = t;
      if (! t)
	break;

      if (t->bad_p)
	viable = -1;

      if (i == 0)
	continue;

      if (parmnode)
	parmnode = FUNC0 (parmnode);
      argnode = FUNC0 (argnode);
    }

  if (i < len)
    viable = 0;

  if (!FUNC11 (parmnode))
    viable = 0;

  return FUNC5 (candidates, totype, arglist, len, convs,
			access_path, conversion_path, viable);
}