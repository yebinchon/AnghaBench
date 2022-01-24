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
struct mem_address {void* step; int index; scalar_t__ symbol; void* base; void* offset; } ;
struct affine_tree_combination {int dummy; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct affine_tree_combination*,struct mem_address*) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 (void*,struct mem_address*) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,void*,void*) ; 
 void* FUNC6 (void*,void*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct mem_address*) ; 
 scalar_t__ FUNC11 (void*) ; 
 scalar_t__ FUNC12 (void*) ; 
 void* sizetype ; 

tree
FUNC13 (block_stmt_iterator *bsi, tree type,
		struct affine_tree_combination *addr)
{
  tree mem_ref, tmp;
  tree addr_type = FUNC3 (type), atype;
  struct mem_address parts;

  FUNC1 (addr, &parts);
  FUNC10 (bsi, &parts);
  mem_ref = FUNC4 (type, &parts);
  if (mem_ref)
    return mem_ref;

  /* The expression is too complicated.  Try making it simpler.  */

  if (parts.step && !FUNC11 (parts.step))
    {
      /* Move the multiplication to index.  */
      FUNC8 (parts.index);
      parts.index = FUNC7 (bsi,
				FUNC5 (MULT_EXPR, sizetype,
					     parts.index, parts.step),
				true, NULL_TREE);
      parts.step = NULL_TREE;
  
      mem_ref = FUNC4 (type, &parts);
      if (mem_ref)
	return mem_ref;
    }

  if (parts.symbol)
    {
      tmp = FUNC6 (addr_type,
			  FUNC2 (parts.symbol, current_function_decl));
    
      /* Add the symbol to base, eventually forcing it to register.  */
      if (parts.base)
	{
	  if (parts.index)
	    parts.base = FUNC7 (bsi,
			FUNC5 (PLUS_EXPR, addr_type,
				     FUNC6 (addr_type, parts.base),
				     tmp),
			true, NULL_TREE);
	  else
	    {
	      parts.index = parts.base;
	      parts.base = tmp;
	    }
	}
      else
	parts.base = tmp;
      parts.symbol = NULL_TREE;

      mem_ref = FUNC4 (type, &parts);
      if (mem_ref)
	return mem_ref;
    }

  if (parts.index)
    {
      /* Add index to base.  */
      if (parts.base)
	{
	  atype = FUNC0 (parts.base);
	  parts.base = FUNC7 (bsi,
			FUNC5 (PLUS_EXPR, atype,
				     parts.base,
			    	     FUNC6 (atype, parts.index)),
			true, NULL_TREE);
	}
      else
	parts.base = parts.index;
      parts.index = NULL_TREE;

      mem_ref = FUNC4 (type, &parts);
      if (mem_ref)
	return mem_ref;
    }

  if (parts.offset && !FUNC12 (parts.offset))
    {
      /* Try adding offset to base.  */
      if (parts.base)
	{
	  atype = FUNC0 (parts.base);
	  parts.base = FUNC7 (bsi, 
			FUNC5 (PLUS_EXPR, atype,
				     parts.base,
				     FUNC6 (atype, parts.offset)),
			true, NULL_TREE);
	}
      else
	parts.base = parts.offset;

      parts.offset = NULL_TREE;

      mem_ref = FUNC4 (type, &parts);
      if (mem_ref)
	return mem_ref;
    }

  /* Verify that the address is in the simplest possible shape
     (only a register).  If we cannot create such a memory reference,
     something is really wrong.  */
  FUNC8 (parts.symbol == NULL_TREE);
  FUNC8 (parts.index == NULL_TREE);
  FUNC8 (!parts.step || FUNC11 (parts.step));
  FUNC8 (!parts.offset || FUNC12 (parts.offset));
  FUNC9 ();
}