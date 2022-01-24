#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_4__ {int /*<<< orphan*/  alias_mayalias; int /*<<< orphan*/  alias_noalias; int /*<<< orphan*/  structnoaddress_resolved; int /*<<< orphan*/  structnoaddress_queries; int /*<<< orphan*/  tbaa_resolved; int /*<<< orphan*/  tbaa_queries; int /*<<< orphan*/  simple_resolved; int /*<<< orphan*/  simple_queries; int /*<<< orphan*/  alias_queries; } ;
struct TYPE_3__ {scalar_t__ symbol_mem_tag; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ SYMBOL_MEMORY_TAG ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 TYPE_2__ alias_stats ; 
 int flag_argument_noalias ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 TYPE_1__* FUNC9 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC10 (tree ptr, HOST_WIDE_INT mem_alias_set,
	     tree var, HOST_WIDE_INT var_alias_set,
	     bool alias_set_only)
{
  tree mem;

  alias_stats.alias_queries++;
  alias_stats.simple_queries++;

  /* By convention, a variable cannot alias itself.  */
  mem = FUNC9 (ptr)->symbol_mem_tag;
  if (mem == var)
    {
      alias_stats.alias_noalias++;
      alias_stats.simple_resolved++;
      return false;
    }

  /* If -fargument-noalias-global is > 2, pointer arguments may
     not point to anything else.  */
  if (flag_argument_noalias > 2 && FUNC1 (ptr) == PARM_DECL)
    {
      alias_stats.alias_noalias++;
      alias_stats.simple_resolved++;
      return false;
    }

  /* If -fargument-noalias-global is > 1, pointer arguments may
     not point to global variables.  */
  if (flag_argument_noalias > 1 && FUNC7 (var)
      && FUNC1 (ptr) == PARM_DECL)
    {
      alias_stats.alias_noalias++;
      alias_stats.simple_resolved++;
      return false;
    }

  /* If either MEM or VAR is a read-only global and the other one
     isn't, then PTR cannot point to VAR.  */
  if ((FUNC8 (mem) && !FUNC8 (var))
      || (FUNC8 (var) && !FUNC8 (mem)))
    {
      alias_stats.alias_noalias++;
      alias_stats.simple_resolved++;
      return false;
    }

  FUNC4 (FUNC1 (mem) == SYMBOL_MEMORY_TAG);

  alias_stats.tbaa_queries++;

  /* If the alias sets don't conflict then MEM cannot alias VAR.  */
  if (!FUNC3 (mem_alias_set, var_alias_set))
    {
      alias_stats.alias_noalias++;
      alias_stats.tbaa_resolved++;
      return false;
    }

  /* If var is a record or union type, ptr cannot point into var
     unless there is some operation explicit address operation in the
     program that can reference a field of the ptr's dereferenced
     type.  This also assumes that the types of both var and ptr are
     contained within the compilation unit, and that there is no fancy
     addressing arithmetic associated with any of the types
     involved.  */

  if ((mem_alias_set != 0) && (var_alias_set != 0))
    {
      tree ptr_type = FUNC2 (ptr);
      tree var_type = FUNC2 (var);
      
      /* The star count is -1 if the type at the end of the pointer_to 
	 chain is not a record or union type. */ 
      if ((!alias_set_only) && 
	  FUNC6 (var_type) >= 0)
	{
	  int ptr_star_count = 0;
	  
	  /* Ipa_type_escape_star_count_of_interesting_type is a little to
	     restrictive for the pointer type, need to allow pointers to
	     primitive types as long as those types cannot be pointers
	     to everything.  */
	  while (FUNC0 (ptr_type))
	    /* Strip the *'s off.  */ 
	    {
	      ptr_type = FUNC2 (ptr_type);
	      ptr_star_count++;
	    }
	  
	  /* There does not appear to be a better test to see if the 
	     pointer type was one of the pointer to everything 
	     types.  */
	  
	  if (ptr_star_count > 0)
	    {
	      alias_stats.structnoaddress_queries++;
	      if (FUNC5 (var_type, 
							    FUNC2 (ptr))) 
		{
		  alias_stats.structnoaddress_resolved++;
		  alias_stats.alias_noalias++;
		  return false;
		}
	    }
	  else if (ptr_star_count == 0)
	    {
	      /* If ptr_type was not really a pointer to type, it cannot 
		 alias.  */ 
	      alias_stats.structnoaddress_queries++;
	      alias_stats.structnoaddress_resolved++;
	      alias_stats.alias_noalias++;
	      return false;
	    }
	}
    }

  alias_stats.alias_mayalias++;
  return true;
}