#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  COMPONENT_REF ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 int /*<<< orphan*/  INDIRECT_REF ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ QUAL_UNION_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 TYPE_1__ lang_hooks ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 int FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC17 (tree record_type, tree base, tree offset,
				    tree orig_type, bool base_is_ptr)
{
  tree f, t, field_type, tail_array_field, field_offset;

  if (FUNC5 (record_type) != RECORD_TYPE
      && FUNC5 (record_type) != UNION_TYPE
      && FUNC5 (record_type) != QUAL_UNION_TYPE)
    return NULL_TREE;

  /* Short-circuit silly cases.  */
  if (lang_hooks.types_compatible_p (record_type, orig_type))
    return NULL_TREE;

  tail_array_field = NULL_TREE;
  for (f = FUNC7 (record_type); f ; f = FUNC4 (f))
    {
      int cmp;

      if (FUNC5 (f) != FIELD_DECL)
	continue;
      if (FUNC1 (f))
	continue;

      field_offset = FUNC10 (f);
      if (FUNC5 (field_offset) != INTEGER_CST)
	continue;

      /* ??? Java creates "interesting" fields for representing base classes.
	 They have no name, and have no context.  With no context, we get into
	 trouble with nonoverlapping_component_refs_p.  Skip them.  */
      if (!FUNC2 (f))
	continue;

      /* The previous array field isn't at the end.  */
      tail_array_field = NULL_TREE;

      /* Check to see if this offset overlaps with the field.  */
      cmp = FUNC15 (field_offset, offset);
      if (cmp > 0)
	continue;

      field_type = FUNC6 (f);

      /* Here we exactly match the offset being checked.  If the types match,
	 then we can return that field.  */
      if (cmp == 0
	  && lang_hooks.types_compatible_p (orig_type, field_type))
	{
	  if (base_is_ptr)
	    base = FUNC8 (INDIRECT_REF, record_type, base);
	  t = FUNC9 (COMPONENT_REF, field_type, base, f, NULL_TREE);
	  return t;
	}
      
      /* Don't care about offsets into the middle of scalars.  */
      if (!FUNC0 (field_type))
	continue;

      /* Check for array at the end of the struct.  This is often
	 used as for flexible array members.  We should be able to
	 turn this into an array access anyway.  */
      if (FUNC5 (field_type) == ARRAY_TYPE)
	tail_array_field = f;

      /* Check the end of the field against the offset.  */
      if (!FUNC3 (f)
	  || FUNC5 (FUNC3 (f)) != INTEGER_CST)
	continue;
      t = FUNC11 (MINUS_EXPR, offset, field_offset, 1);
      if (!FUNC16 (t, FUNC3 (f)))
	continue;

      /* If we matched, then set offset to the displacement into
	 this field.  */
      offset = t;
      goto found;
    }

  if (!tail_array_field)
    return NULL_TREE;

  f = tail_array_field;
  field_type = FUNC6 (f);
  offset = FUNC11 (MINUS_EXPR, offset, FUNC10 (f), 1);

 found:
  /* If we get here, we've got an aggregate field, and a possibly 
     nonzero offset into them.  Recurse and hope for a valid match.  */
  if (base_is_ptr)
    base = FUNC8 (INDIRECT_REF, record_type, base);
  base = FUNC9 (COMPONENT_REF, field_type, base, f, NULL_TREE);

  t = FUNC12 (base, offset, orig_type);
  if (t)
    return t;
  return FUNC17 (field_type, base, offset,
					     orig_type, false);
}