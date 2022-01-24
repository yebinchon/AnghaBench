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
struct type_hash {scalar_t__ hash; int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  ARRAY_TYPE 143 
#define  BOOLEAN_TYPE 142 
#define  COMPLEX_TYPE 141 
#define  ENUMERAL_TYPE 140 
#define  FUNCTION_TYPE 139 
#define  INTEGER_TYPE 138 
#define  METHOD_TYPE 137 
#define  OFFSET_TYPE 136 
#define  POINTER_TYPE 135 
#define  QUAL_UNION_TYPE 134 
#define  REAL_TYPE 133 
#define  RECORD_TYPE 132 
#define  REFERENCE_TYPE 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TREE_LIST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 130 
#define  VECTOR_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17 (const void *va, const void *vb)
{
  const struct type_hash *a = va, *b = vb;

  /* First test the things that are the same for all types.  */
  if (a->hash != b->hash
      || FUNC0 (a->type) != FUNC0 (b->type)
      || FUNC1 (a->type) != FUNC1 (b->type)
      || !FUNC14 (FUNC4 (a->type),
				 FUNC4 (b->type))
      || FUNC2 (a->type) != FUNC2 (b->type)
      || FUNC10 (a->type) != FUNC10 (b->type))
    return 0;

  switch (FUNC0 (a->type))
    {
    case VOID_TYPE:
    case COMPLEX_TYPE:
    case POINTER_TYPE:
    case REFERENCE_TYPE:
      return 1;

    case VECTOR_TYPE:
      return FUNC13 (a->type) == FUNC13 (b->type);

    case ENUMERAL_TYPE:
      if (FUNC12 (a->type) != FUNC12 (b->type)
	  && !(FUNC12 (a->type)
	       && FUNC0 (FUNC12 (a->type)) == TREE_LIST
	       && FUNC12 (b->type)
	       && FUNC0 (FUNC12 (b->type)) == TREE_LIST
	       && FUNC16 (FUNC12 (a->type),
				   FUNC12 (b->type))))
	return 0;

      /* ... fall through ... */

    case INTEGER_TYPE:
    case REAL_TYPE:
    case BOOLEAN_TYPE:
      return ((FUNC7 (a->type) == FUNC7 (b->type)
	       || FUNC15 (FUNC7 (a->type),
				      FUNC7 (b->type)))
	      && (FUNC9 (a->type) == FUNC9 (b->type)
		  || FUNC15 (FUNC9 (a->type),
					 FUNC9 (b->type))));

    case OFFSET_TYPE:
      return FUNC11 (a->type) == FUNC11 (b->type);

    case METHOD_TYPE:
      return (FUNC8 (a->type) == FUNC8 (b->type)
	      && (FUNC3 (a->type) == FUNC3 (b->type)
		  || (FUNC3 (a->type)
		      && FUNC0 (FUNC3 (a->type)) == TREE_LIST
		      && FUNC3 (b->type)
		      && FUNC0 (FUNC3 (b->type)) == TREE_LIST
		      && FUNC16 (FUNC3 (a->type),
					  FUNC3 (b->type)))));

    case ARRAY_TYPE:
      return FUNC5 (a->type) == FUNC5 (b->type);

    case RECORD_TYPE:
    case UNION_TYPE:
    case QUAL_UNION_TYPE:
      return (FUNC6 (a->type) == FUNC6 (b->type)
	      || (FUNC6 (a->type)
		  && FUNC0 (FUNC6 (a->type)) == TREE_LIST
		  && FUNC6 (b->type)
		  && FUNC0 (FUNC6 (b->type)) == TREE_LIST
		  && FUNC16 (FUNC6 (a->type),
				      FUNC6 (b->type))));

    case FUNCTION_TYPE:
      return (FUNC3 (a->type) == FUNC3 (b->type)
	      || (FUNC3 (a->type)
		  && FUNC0 (FUNC3 (a->type)) == TREE_LIST
		  && FUNC3 (b->type)
		  && FUNC0 (FUNC3 (b->type)) == TREE_LIST
		  && FUNC16 (FUNC3 (a->type),
				      FUNC3 (b->type))));

    default:
      return 0;
    }
}