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
typedef  void* tree ;
struct arg_lookup {void* functions; void* namespaces; void* classes; void* args; void* name; } ;

/* Variables and functions */
 void* NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC2 (struct arg_lookup*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*) ; 
 void* error_mark_node ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

tree
FUNC7 (tree name, tree fns, tree args)
{
  struct arg_lookup k;

  FUNC6 (TV_NAME_LOOKUP);

  /* Remove any hidden friend functions from the list of functions
     found so far.  They will be added back by arg_assoc_class as
     appropriate.  */
  fns = FUNC5 (fns);

  k.name = name;
  k.args = args;
  k.functions = fns;
  k.classes = NULL_TREE;

  /* We previously performed an optimization here by setting
     NAMESPACES to the current namespace when it was safe. However, DR
     164 says that namespaces that were already searched in the first
     stage of template processing are searched again (potentially
     picking up later definitions) in the second stage. */
  k.namespaces = NULL_TREE;

  FUNC2 (&k, args);

  fns = k.functions;
  
  if (fns
      && FUNC1 (fns) != VAR_DECL
      && !FUNC4 (fns))
    {
      FUNC3 ("argument dependent lookup finds %q+D", fns);
      FUNC3 ("  in call to %qD", name);
      fns = error_mark_node;
    }
    
  FUNC0 (TV_NAME_LOOKUP, fns);
}