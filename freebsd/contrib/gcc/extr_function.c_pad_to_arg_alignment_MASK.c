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
struct args_size {scalar_t__ constant; void* var; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 void* FUNC0 (struct args_size) ; 
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 void* NULL_TREE ; 
 int PARM_BOUNDARY ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ SPARC_STACK_BOUNDARY_HACK ; 
 int STACK_BOUNDARY ; 
 scalar_t__ STACK_POINTER_OFFSET ; 
 void* FUNC3 (void*,int) ; 
 void* FUNC4 (void*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7 (struct args_size *offset_ptr, int boundary,
		      struct args_size *alignment_pad)
{
  tree save_var = NULL_TREE;
  HOST_WIDE_INT save_constant = 0;
  int boundary_in_bytes = boundary / BITS_PER_UNIT;
  HOST_WIDE_INT sp_offset = STACK_POINTER_OFFSET;

#ifdef SPARC_STACK_BOUNDARY_HACK
  /* ??? The SPARC port may claim a STACK_BOUNDARY higher than
     the real alignment of %sp.  However, when it does this, the
     alignment of %sp+STACK_POINTER_OFFSET is STACK_BOUNDARY.  */
  if (SPARC_STACK_BOUNDARY_HACK)
    sp_offset = 0;
#endif

  if (boundary > PARM_BOUNDARY && boundary > STACK_BOUNDARY)
    {
      save_var = offset_ptr->var;
      save_constant = offset_ptr->constant;
    }

  alignment_pad->var = NULL_TREE;
  alignment_pad->constant = 0;

  if (boundary > BITS_PER_UNIT)
    {
      if (offset_ptr->var)
	{
	  tree sp_offset_tree = FUNC6 (sp_offset);
	  tree offset = FUNC5 (PLUS_EXPR,
				    FUNC0 (*offset_ptr),
				    sp_offset_tree);
#ifdef ARGS_GROW_DOWNWARD
	  tree rounded = round_down (offset, boundary / BITS_PER_UNIT);
#else
	  tree rounded = FUNC4   (offset, boundary / BITS_PER_UNIT);
#endif

	  offset_ptr->var = FUNC5 (MINUS_EXPR, rounded, sp_offset_tree);
	  /* ARGS_SIZE_TREE includes constant term.  */
	  offset_ptr->constant = 0;
	  if (boundary > PARM_BOUNDARY && boundary > STACK_BOUNDARY)
	    alignment_pad->var = FUNC5 (MINUS_EXPR, offset_ptr->var,
					     save_var);
	}
      else
	{
	  offset_ptr->constant = -sp_offset +
#ifdef ARGS_GROW_DOWNWARD
	    FLOOR_ROUND (offset_ptr->constant + sp_offset, boundary_in_bytes);
#else
	    FUNC1 (offset_ptr->constant + sp_offset, boundary_in_bytes);
#endif
	    if (boundary > PARM_BOUNDARY && boundary > STACK_BOUNDARY)
	      alignment_pad->constant = offset_ptr->constant - save_constant;
	}
    }
}