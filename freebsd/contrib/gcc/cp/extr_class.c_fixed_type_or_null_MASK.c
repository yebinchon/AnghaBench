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
typedef  int /*<<< orphan*/  htab_t ;

/* Variables and functions */
#define  ADDR_EXPR 141 
 int const ARRAY_TYPE ; 
#define  CALL_EXPR 140 
#define  COMPONENT_REF 139 
#define  CONVERT_EXPR 138 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
#define  FIELD_DECL 137 
#define  INDIRECT_REF 136 
 int /*<<< orphan*/  INSERT ; 
 int const INTEGER_CST ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
#define  MINUS_EXPR 135 
#define  NOP_EXPR 134 
 void* NULL_TREE ; 
#define  PARM_DECL 133 
#define  PLUS_EXPR 132 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int const REFERENCE_TYPE ; 
#define  RESULT_DECL 131 
#define  SAVE_EXPR 130 
#define  TARGET_EXPR 129 
 int const FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (void*,int) ; 
 void* FUNC11 (void*) ; 
#define  VAR_DECL 128 
 void* current_class_ptr ; 
 int /*<<< orphan*/  current_function_decl ; 
 void* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  htab_eq_pointer ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*) ; 
 void** FUNC15 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  htab_hash_pointer ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static tree
FUNC17 (tree instance, int* nonnull, int* cdtorp)
{
  switch (FUNC8 (instance))
    {
    case INDIRECT_REF:
      if (FUNC7 (FUNC11 (instance)))
	return NULL_TREE;
      else
	return FUNC17 (FUNC10 (instance, 0),
				   nonnull, cdtorp);

    case CALL_EXPR:
      /* This is a call to a constructor, hence it's never zero.  */
      if (FUNC9 (instance))
	{
	  if (nonnull)
	    *nonnull = 1;
	  return FUNC11 (instance);
	}
      return NULL_TREE;

    case SAVE_EXPR:
      /* This is a call to a constructor, hence it's never zero.  */
      if (FUNC9 (instance))
	{
	  if (nonnull)
	    *nonnull = 1;
	  return FUNC11 (instance);
	}
      return FUNC17 (FUNC10 (instance, 0), nonnull, cdtorp);

    case PLUS_EXPR:
    case MINUS_EXPR:
      if (FUNC8 (FUNC10 (instance, 0)) == ADDR_EXPR)
	return FUNC17 (FUNC10 (instance, 0), nonnull, cdtorp);
      if (FUNC8 (FUNC10 (instance, 1)) == INTEGER_CST)
	/* Propagate nonnull.  */
	return FUNC17 (FUNC10 (instance, 0), nonnull, cdtorp);
      return NULL_TREE;

    case NOP_EXPR:
    case CONVERT_EXPR:
      return FUNC17 (FUNC10 (instance, 0), nonnull, cdtorp);

    case ADDR_EXPR:
      instance = FUNC10 (instance, 0);
      if (nonnull)
	{
	  /* Just because we see an ADDR_EXPR doesn't mean we're dealing
	     with a real object -- given &p->f, p can still be null.  */
	  tree t = FUNC12 (instance);
	  /* ??? Probably should check DECL_WEAK here.  */
	  if (t && FUNC5 (t))
	    *nonnull = 1;
	}
      return FUNC17 (instance, nonnull, cdtorp);

    case COMPONENT_REF:
      /* If this component is really a base class reference, then the field
	 itself isn't definitive.  */
      if (FUNC2 (FUNC10 (instance, 1)))
	return FUNC17 (FUNC10 (instance, 0), nonnull, cdtorp);
      return FUNC17 (FUNC10 (instance, 1), nonnull, cdtorp);

    case VAR_DECL:
    case FIELD_DECL:
      if (FUNC8 (FUNC11 (instance)) == ARRAY_TYPE
	  && FUNC6 (FUNC11 (FUNC11 (instance))))
	{
	  if (nonnull)
	    *nonnull = 1;
	  return FUNC11 (FUNC11 (instance));
	}
      /* fall through...  */
    case TARGET_EXPR:
    case PARM_DECL:
    case RESULT_DECL:
      if (FUNC6 (FUNC11 (instance)))
	{
	  if (nonnull)
	    *nonnull = 1;
	  return FUNC11 (instance);
	}
      else if (instance == current_class_ptr)
	{
	  if (nonnull)
	    *nonnull = 1;

	  /* if we're in a ctor or dtor, we know our type.  */
	  if (FUNC4 (current_function_decl)
	      && (FUNC0 (current_function_decl)
		  || FUNC1 (current_function_decl)))
	    {
	      if (cdtorp)
		*cdtorp = 1;
	      return FUNC11 (FUNC11 (instance));
	    }
	}
      else if (FUNC8 (FUNC11 (instance)) == REFERENCE_TYPE)
	{
	  /* We only need one hash table because it is always left empty.  */
	  static htab_t ht;
	  if (!ht)
	    ht = FUNC13 (37, 
			      htab_hash_pointer,
			      htab_eq_pointer,
			      /*htab_del=*/NULL);

	  /* Reference variables should be references to objects.  */
	  if (nonnull)
	    *nonnull = 1;

	  /* Enter the INSTANCE in a table to prevent recursion; a
	     variable's initializer may refer to the variable
	     itself.  */
	  if (FUNC8 (instance) == VAR_DECL
	      && FUNC3 (instance)
	      && !FUNC14 (ht, instance))
	    {
	      tree type;
	      void **slot;

	      slot = FUNC15 (ht, instance, INSERT);
	      *slot = instance;
	      type = FUNC17 (FUNC3 (instance),
					 nonnull, cdtorp);
	      FUNC16 (ht, instance);

	      return type;
	    }
	}
      return NULL_TREE;

    default:
      return NULL_TREE;
    }
}