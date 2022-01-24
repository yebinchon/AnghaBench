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
struct TYPE_2__ {scalar_t__* elts; int len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* FUNC6 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ TYPENAME_TYPE ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ USING_DECL ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_calls_lookup_field_1 ; 
 int /*<<< orphan*/  n_fields_searched ; 
 scalar_t__ vptr_identifier ; 

tree
FUNC15 (tree type, tree name, bool want_type)
{
  tree field;

  if (FUNC8 (type) == TEMPLATE_TYPE_PARM
      || FUNC8 (type) == BOUND_TEMPLATE_TEMPLATE_PARM
      || FUNC8 (type) == TYPENAME_TYPE)
    /* The TYPE_FIELDS of a TEMPLATE_TYPE_PARM and
       BOUND_TEMPLATE_TEMPLATE_PARM are not fields at all;
       instead TYPE_FIELDS is the TEMPLATE_PARM_INDEX.  (Miraculously,
       the code often worked even when we treated the index as a list
       of fields!)
       The TYPE_FIELDS of TYPENAME_TYPE is its TYPENAME_TYPE_FULLNAME.  */
    return NULL_TREE;

  if (FUNC11 (type)
      && FUNC3 (FUNC11 (type))
      && FUNC6 (FUNC11 (type)))
    {
      tree *fields = &FUNC6 (FUNC11 (type))->elts[0];
      int lo = 0, hi = FUNC6 (FUNC11 (type))->len;
      int i;

      while (lo < hi)
	{
	  i = (lo + hi) / 2;

#ifdef GATHER_STATISTICS
	  n_fields_searched++;
#endif /* GATHER_STATISTICS */

	  if (FUNC4 (fields[i]) > name)
	    hi = i;
	  else if (FUNC4 (fields[i]) < name)
	    lo = i + 1;
	  else
	    {
	      field = NULL_TREE;

	      /* We might have a nested class and a field with the
		 same name; we sorted them appropriately via
		 field_decl_cmp, so just look for the first or last
		 field with this name.  */
	      if (want_type)
		{
		  do
		    field = fields[i--];
		  while (i >= lo && FUNC4 (fields[i]) == name);
		  if (FUNC8 (field) != TYPE_DECL
		      && !FUNC1 (field))
		    field = NULL_TREE;
		}
	      else
		{
		  do
		    field = fields[i++];
		  while (i < hi && FUNC4 (fields[i]) == name);
		}
	      return field;
	    }
	}
      return NULL_TREE;
    }

  field = FUNC10 (type);

#ifdef GATHER_STATISTICS
  n_calls_lookup_field_1++;
#endif /* GATHER_STATISTICS */
  for (field = FUNC10 (type); field; field = FUNC7 (field))
    {
#ifdef GATHER_STATISTICS
      n_fields_searched++;
#endif /* GATHER_STATISTICS */
      FUNC14 (FUNC5 (field));
      if (FUNC4 (field) == NULL_TREE
	  && FUNC0 (FUNC9 (field)))
	{
	  tree temp = FUNC15 (FUNC9 (field), name, want_type);
	  if (temp)
	    return temp;
	}
      if (FUNC8 (field) == USING_DECL)
	{
	  /* We generally treat class-scope using-declarations as
	     ARM-style access specifications, because support for the
	     ISO semantics has not been implemented.  So, in general,
	     there's no reason to return a USING_DECL, and the rest of
	     the compiler cannot handle that.  Once the class is
	     defined, USING_DECLs are purged from TYPE_FIELDS; see
	     handle_using_decl.  However, we make special efforts to
	     make using-declarations in class templates and class
	     template partial specializations work correctly.  */
	  if (!FUNC2 (field))
	    continue;
	}

      if (FUNC4 (field) == name
	  && (!want_type
	      || FUNC8 (field) == TYPE_DECL
	      || FUNC1 (field)))
	return field;
    }
  /* Not found.  */
  if (name == vptr_identifier)
    {
      /* Give the user what s/he thinks s/he wants.  */
      if (FUNC12 (type))
	return FUNC13 (type);
    }
  return NULL_TREE;
}