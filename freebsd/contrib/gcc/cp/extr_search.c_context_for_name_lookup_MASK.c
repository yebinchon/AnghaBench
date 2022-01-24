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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ global_namespace ; 

tree
FUNC4 (tree decl)
{
  /* [class.union]

     For the purposes of name lookup, after the anonymous union
     definition, the members of the anonymous union are considered to
     have been defined in the scope in which the anonymous union is
     declared.  */
  tree context = FUNC1 (decl);

  while (context && FUNC3 (context) && FUNC0 (context))
    context = FUNC2 (context);
  if (!context)
    context = global_namespace;

  return context;
}