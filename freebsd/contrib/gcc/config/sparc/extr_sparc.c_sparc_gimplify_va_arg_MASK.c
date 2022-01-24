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
typedef  int /*<<< orphan*/  tree ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int BITS_PER_WORD ; 
 int /*<<< orphan*/  BIT_AND_EXPR ; 
 size_t BUILT_IN_MEMCPY ; 
 scalar_t__ BYTES_BIG_ENDIAN ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ TARGET_ARCH64 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fb_rvalue ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * implicit_built_in_decls ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  is_gimple_val ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC18 (tree valist, tree type, tree *pre_p, tree *post_p)
{
  HOST_WIDE_INT size, rsize, align;
  tree addr, incr;
  bool indirect;
  tree ptrtype = FUNC6 (type);

  if (FUNC14 (NULL, FUNC2 (type), type, false))
    {
      indirect = true;
      size = rsize = UNITS_PER_WORD;
      align = 0;
    }
  else
    {
      indirect = false;
      size = FUNC13 (type);
      rsize = (size + UNITS_PER_WORD - 1) & -UNITS_PER_WORD;
      align = 0;
    
      if (TARGET_ARCH64)
	{
	  /* For SPARC64, objects requiring 16-byte alignment get it.  */
	  if (FUNC1 (type) >= 2 * (unsigned) BITS_PER_WORD)
	    align = 2 * UNITS_PER_WORD;

	  /* SPARC-V9 ABI states that structures up to 16 bytes in size
	     are left-justified in their slots.  */
	  if (FUNC0 (type))
	    {
	      if (size == 0)
		size = rsize = UNITS_PER_WORD;
	      else
		size = rsize;
	    }
	}
    }

  incr = valist;
  if (align)
    {
      incr = FUNC9 (FUNC3 (PLUS_EXPR, ptr_type_node, incr,
			   FUNC16 (align - 1)));
      incr = FUNC9 (FUNC3 (BIT_AND_EXPR, ptr_type_node, incr,
			   FUNC16 (-align)));
    }

  FUNC12 (&incr, pre_p, post_p, is_gimple_val, fb_rvalue);
  addr = incr;

  if (BYTES_BIG_ENDIAN && size < rsize)
    addr = FUNC9 (FUNC3 (PLUS_EXPR, ptr_type_node, incr,
			 FUNC16 (rsize - size)));

  if (indirect)
    {
      addr = FUNC10 (FUNC6 (ptrtype), addr);
      addr = FUNC7 (addr);
    }
  /* If the address isn't aligned properly for the type,
     we may need to copy to a temporary.  
     FIXME: This is inefficient.  Usually we can do this
     in registers.  */
  else if (align == 0
	   && FUNC1 (type) > BITS_PER_WORD)
    {
      tree tmp = FUNC8 (type, "va_arg_tmp");
      tree dest_addr = FUNC4 (tmp);

      tree copy = FUNC5
	(implicit_built_in_decls[BUILT_IN_MEMCPY],
	 FUNC17 (NULL_TREE, dest_addr,
		    FUNC17 (NULL_TREE, addr,
			       FUNC17 (NULL_TREE, FUNC15 (rsize),
					  NULL_TREE))));

      FUNC11 (copy, pre_p);
      addr = dest_addr;
    }
  else
    addr = FUNC10 (ptrtype, addr);

  incr = FUNC9 (FUNC3 (PLUS_EXPR, ptr_type_node, incr, FUNC16 (rsize)));
  incr = FUNC3 (MODIFY_EXPR, ptr_type_node, valist, incr);
  FUNC11 (incr, post_p);

  return FUNC7 (addr);
}