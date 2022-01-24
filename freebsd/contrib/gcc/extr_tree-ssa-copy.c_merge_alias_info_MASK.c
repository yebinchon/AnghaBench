#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* var_ann_t ;
typedef  int /*<<< orphan*/  tree ;
struct ptr_info_def {scalar_t__ pt_vars; scalar_t__ name_mem_tag; } ;
struct TYPE_5__ {int (* types_compatible_p ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {scalar_t__ symbol_mem_tag; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ptr_info_def* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__ lang_hooks ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9 (tree orig, tree new)
{
  tree new_sym = FUNC2 (new);
  tree orig_sym = FUNC2 (orig);
  var_ann_t new_ann = FUNC8 (new_sym);
  var_ann_t orig_ann = FUNC8 (orig_sym);

  FUNC5 (FUNC0 (FUNC3 (orig)));
  FUNC5 (FUNC0 (FUNC3 (new)));

#if defined ENABLE_CHECKING
  gcc_assert (lang_hooks.types_compatible_p (TREE_TYPE (orig),
					     TREE_TYPE (new)));

  /* If the pointed-to alias sets are different, these two pointers
     would never have the same memory tag.  In this case, NEW should
     not have been propagated into ORIG.  */
  gcc_assert (get_alias_set (TREE_TYPE (TREE_TYPE (new_sym)))
	      == get_alias_set (TREE_TYPE (TREE_TYPE (orig_sym))));
#endif

  /* Synchronize the symbol tags.  If both pointers had a tag and they
     are different, then something has gone wrong.  Symbol tags can
     always be merged because they are flow insensitive, all the SSA
     names of the same base DECL share the same symbol tag.  */
  if (new_ann->symbol_mem_tag == NULL_TREE)
    new_ann->symbol_mem_tag = orig_ann->symbol_mem_tag;
  else if (orig_ann->symbol_mem_tag == NULL_TREE)
    orig_ann->symbol_mem_tag = new_ann->symbol_mem_tag;
  else
    FUNC5 (new_ann->symbol_mem_tag == orig_ann->symbol_mem_tag);

  /* Check that flow-sensitive information is compatible.  Notice that
     we may not merge flow-sensitive information here.  This function
     is called when propagating equivalences dictated by the IL, like
     a copy operation P_i = Q_j, and from equivalences dictated by
     control-flow, like if (P_i == Q_j).
     
     In the former case, P_i and Q_j are equivalent in every block
     dominated by the assignment, so their flow-sensitive information
     is always the same.  However, in the latter case, the pointers
     P_i and Q_j are only equivalent in one of the sub-graphs out of
     the predicate, so their flow-sensitive information is not the
     same in every block dominated by the predicate.

     Since we cannot distinguish one case from another in this
     function, we can only make sure that if P_i and Q_j have
     flow-sensitive information, they should be compatible.  */
  if (FUNC1 (orig) && FUNC1 (new))
    {
      struct ptr_info_def *orig_ptr_info = FUNC1 (orig);
      struct ptr_info_def *new_ptr_info = FUNC1 (new);

      /* Note that pointer NEW and ORIG may actually have different
	 pointed-to variables (e.g., PR 18291 represented in
	 testsuite/gcc.c-torture/compile/pr18291.c).  However, since
	 NEW is being copy-propagated into ORIG, it must always be
	 true that the pointed-to set for pointer NEW is the same, or
	 a subset, of the pointed-to set for pointer ORIG.  If this
	 isn't the case, we shouldn't have been able to do the
	 propagation of NEW into ORIG.  */
      if (orig_ptr_info->name_mem_tag
	  && new_ptr_info->name_mem_tag
	  && orig_ptr_info->pt_vars
	  && new_ptr_info->pt_vars)
	FUNC5 (FUNC4 (new_ptr_info->pt_vars,
					orig_ptr_info->pt_vars));
    }
}