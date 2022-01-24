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
typedef  int /*<<< orphan*/  location_t ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
#define  ARRAY_RANGE_REF 133 
#define  ARRAY_REF 132 
 int /*<<< orphan*/  BITS_PER_UNIT ; 
#define  BIT_FIELD_REF 131 
 int /*<<< orphan*/  CEIL_DIV_EXPR ; 
#define  COMPONENT_REF 130 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  INDIRECT_REF 129 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int const INTEGER_CST ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int const PARM_DECL ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int const RESULT_DECL ; 
 int const STRING_CST ; 
#define  TARGET_MEM_REF 128 
 int const FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TRUNC_DIV_EXPR ; 
 int /*<<< orphan*/  TRUNC_MOD_EXPR ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int const VAR_DECL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bitsizetype ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ flag_mudflap_ignore_reads ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ integer_one_node ; 
 scalar_t__ integer_zero_node ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  mf_uintptr_type ; 
 int /*<<< orphan*/  ptr_type_node ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  sizetype ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC22 (block_stmt_iterator *iter, tree *tp,
                   location_t *locus, tree dirflag)
{
  tree type, base, limit, addr, size, t;

  /* Don't instrument read operations.  */
  if (dirflag == integer_zero_node && flag_mudflap_ignore_reads)
    return;

  /* Don't instrument marked nodes.  */
  if (FUNC18 (*tp))
    return;

  t = *tp;
  type = FUNC5 (t);

  if (type == error_mark_node)
    return;

  size = FUNC6 (type);

  switch (FUNC3 (t))
    {
    case ARRAY_REF:
    case COMPONENT_REF:
      {
        /* This is trickier than it may first appear.  The reason is
           that we are looking at expressions from the "inside out" at
           this point.  We may have a complex nested aggregate/array
           expression (e.g. "a.b[i].c"), maybe with an indirection as
           the leftmost operator ("p->a.b.d"), where instrumentation
           is necessary.  Or we may have an innocent "a.b.c"
           expression that must not be instrumented.  We need to
           recurse all the way down the nesting structure to figure it
           out: looking just at the outer node is not enough.  */          
        tree var;
        int component_ref_only = (FUNC3 (t) == COMPONENT_REF);
	/* If we have a bitfield component reference, we must note the
	   innermost addressable object in ELT, from which we will
	   construct the byte-addressable bounds of the bitfield.  */
	tree elt = NULL_TREE;
	int bitfield_ref_p = (FUNC3 (t) == COMPONENT_REF
			      && FUNC0 (FUNC4 (t, 1)));

        /* Iterate to the top of the ARRAY_REF/COMPONENT_REF
           containment hierarchy to find the outermost VAR_DECL.  */
        var = FUNC4 (t, 0);
        while (1)
          {
	    if (bitfield_ref_p && elt == NULL_TREE
		&& (FUNC3 (var) == ARRAY_REF || FUNC3 (var) == COMPONENT_REF))
	      elt = var;
	
            if (FUNC3 (var) == ARRAY_REF)
              {
                component_ref_only = 0;
                var = FUNC4 (var, 0);
              }
            else if (FUNC3 (var) == COMPONENT_REF)
              var = FUNC4 (var, 0);
            else if (FUNC2 (var))
              {
		base = FUNC4 (var, 0);
                break;
              }
            else 
              {
                FUNC15 (FUNC3 (var) == VAR_DECL 
                            || FUNC3 (var) == PARM_DECL
                            || FUNC3 (var) == RESULT_DECL
                            || FUNC3 (var) == STRING_CST);
                /* Don't instrument this access if the underlying
                   variable is not "eligible".  This test matches
                   those arrays that have only known-valid indexes,
                   and thus are not labeled TREE_ADDRESSABLE.  */
                if (! FUNC17 (var) || component_ref_only)
                  return;
                else
		  {
		    base = FUNC8 (ADDR_EXPR, FUNC10 (FUNC5 (var)), var);
		    break;
		  }
              }
          }

        /* Handle the case of ordinary non-indirection structure
           accesses.  These have only nested COMPONENT_REF nodes (no
           INDIRECT_REF), but pass through the above filter loop.
           Note that it's possible for such a struct variable to match
           the eligible_p test because someone else might take its
           address sometime.  */

        /* We need special processing for bitfield components, because
           their addresses cannot be taken.  */
        if (bitfield_ref_p)
          {
            tree field = FUNC4 (t, 1);

            if (FUNC3 (FUNC1 (field)) == INTEGER_CST)
              size = FUNC1 (field);
            
	    if (elt)
	      elt = FUNC8 (ADDR_EXPR, FUNC10 (FUNC5 (elt)), elt);
            addr = FUNC14 (ptr_type_node, elt ? elt : base);
            addr = FUNC13 (PLUS_EXPR, ptr_type_node,
				addr, FUNC14 (ptr_type_node,
						    FUNC11 (field)));
          }
        else
          addr = FUNC8 (ADDR_EXPR, FUNC10 (type), t);

        limit = FUNC13 (MINUS_EXPR, mf_uintptr_type,
                             FUNC13 (PLUS_EXPR, mf_uintptr_type,
					  FUNC12 (mf_uintptr_type, addr),
					  size),
                             integer_one_node);
      }
      break;

    case INDIRECT_REF:
      addr = FUNC4 (t, 0);
      base = addr;
      limit = FUNC13 (MINUS_EXPR, ptr_type_node,
                           FUNC13 (PLUS_EXPR, ptr_type_node, base, size),
                           integer_one_node);
      break;

    case TARGET_MEM_REF:
      addr = FUNC20 (ptr_type_node, t);
      base = addr;
      limit = FUNC13 (MINUS_EXPR, ptr_type_node,
			   FUNC13 (PLUS_EXPR, ptr_type_node, base, size),
			   FUNC9 (ptr_type_node, 1));
      break;

    case ARRAY_RANGE_REF:
      FUNC21 (0, "mudflap checking not yet implemented for ARRAY_RANGE_REF");
      return;

    case BIT_FIELD_REF:
      /* ??? merge with COMPONENT_REF code above? */
      {
        tree ofs, rem, bpu;

        /* If we're not dereferencing something, then the access
           must be ok.  */
        if (FUNC3 (FUNC4 (t, 0)) != INDIRECT_REF)
          return;

        bpu = FUNC7 (BITS_PER_UNIT);
        ofs = FUNC12 (bitsizetype, FUNC4 (t, 2));
        rem = FUNC19 (TRUNC_MOD_EXPR, ofs, bpu);
        ofs = FUNC19 (TRUNC_DIV_EXPR, ofs, bpu);

        size = FUNC12 (bitsizetype, FUNC4 (t, 1));
        size = FUNC19 (PLUS_EXPR, size, rem);
        size = FUNC19 (CEIL_DIV_EXPR, size, bpu);
        size = FUNC12 (sizetype, size);

        addr = FUNC4 (FUNC4 (t, 0), 0);
        addr = FUNC12 (ptr_type_node, addr);
        addr = FUNC13 (PLUS_EXPR, ptr_type_node, addr, ofs);

        base = addr;
        limit = FUNC13 (MINUS_EXPR, ptr_type_node,
                             FUNC13 (PLUS_EXPR, ptr_type_node, base, size),
                             integer_one_node);
      }
      break;

    default:
      return;
    }

  FUNC16 (base, limit, iter, locus, dirflag);
}