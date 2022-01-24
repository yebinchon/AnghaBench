#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* varinfo_t ;
typedef  scalar_t__ tree ;
struct constraint_expr {unsigned int var; scalar_t__ offset; void* type; } ;
struct TYPE_5__ {unsigned int id; int is_artificial_var; int is_heap_var; int is_unknown_size_var; int directly_dereferenced; struct TYPE_5__* next; } ;
typedef  int DECL_EXTERNAL ;

/* Variables and functions */
 void* ADDRESSOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* SCALAR ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,char*) ; 
 unsigned int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 unsigned int escaped_vars_id ; 
 int flag_argument_noalias ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 TYPE_1__* FUNC10 (unsigned int) ; 
 TYPE_1__* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct constraint_expr,struct constraint_expr) ; 
 scalar_t__ nonlocal_all ; 
 unsigned int nonlocal_vars_id ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ referenced_vars ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC17 (void)
{
  tree t;
  struct constraint_expr lhs, rhs;
  varinfo_t nonlocal_vi;

  /* For each incoming pointer argument arg, ARG = ESCAPED_VARS or a
     dummy variable if flag_argument_noalias > 2. */
  for (t = FUNC0 (current_function_decl); t; t = FUNC2 (t))
    {
      varinfo_t p;
      unsigned int arg_id;
      
      if (!FUNC5 (t))
	continue;
      
      arg_id = FUNC11 (t)->id;

      /* With flag_argument_noalias greater than two means that the incoming
         argument cannot alias anything except for itself so create a HEAP
         variable.  */
      if (FUNC1 (FUNC3 (t))
	  && flag_argument_noalias > 2)
	{
	  varinfo_t vi;
	  tree heapvar = FUNC13 (t);
	  
	  lhs.offset = 0;
	  lhs.type = SCALAR;
	  lhs.var  = FUNC11 (t)->id;
	  
	  if (heapvar == NULL_TREE)
	    {
	      heapvar = FUNC7 (FUNC3 (FUNC3 (t)), 
					    "PARM_NOALIAS");
	      DECL_EXTERNAL (heapvar) = 1;
	      if (referenced_vars)
		FUNC4 (heapvar);
	      FUNC12 (t, heapvar);
	    }

	  vi = FUNC11 (heapvar);
	  vi->is_artificial_var = 1;
	  vi->is_heap_var = 1;
	  rhs.var = vi->id;
	  rhs.type = ADDRESSOF;
	  rhs.offset = 0;
          for (p = FUNC10 (lhs.var); p; p = p->next)
	    {
	      struct constraint_expr temp = lhs;
	      temp.var = p->id;
	      FUNC16 (FUNC15 (temp, rhs));
	    }
	}
      else      
	{
	  for (p = FUNC10 (arg_id); p; p = p->next)
	    FUNC14 (p);
	}
    }
  if (!nonlocal_all)
    nonlocal_all = FUNC6 (void_type_node);

  /* Create variable info for the nonlocal var if it does not
     exist.  */
  nonlocal_vars_id = FUNC8 (nonlocal_all,
					       FUNC9 (nonlocal_all));
  nonlocal_vi = FUNC10 (nonlocal_vars_id);
  nonlocal_vi->is_artificial_var = 1;
  nonlocal_vi->is_heap_var = 1; 
  nonlocal_vi->is_unknown_size_var = 1;
  nonlocal_vi->directly_dereferenced = true;

  rhs.var = nonlocal_vars_id;
  rhs.type = ADDRESSOF;
  rhs.offset = 0;
  
  lhs.var = escaped_vars_id;
  lhs.type = SCALAR;
  lhs.offset = 0;
  
  FUNC16 (FUNC15 (lhs, rhs));
}