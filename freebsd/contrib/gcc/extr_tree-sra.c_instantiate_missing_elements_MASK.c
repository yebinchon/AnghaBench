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
struct sra_elt {int /*<<< orphan*/  element; int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  ARRAY_TYPE 130 
#define  COMPLEX_TYPE 129 
 int /*<<< orphan*/  COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FIELD_DECL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
#define  RECORD_TYPE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sra_elt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16 (struct sra_elt *elt)
{
  tree type = elt->type;

  switch (FUNC3 (type))
    {
    case RECORD_TYPE:
      {
	tree f;
	for (f = FUNC6 (type); f ; f = FUNC2 (f))
	  if (FUNC3 (f) == FIELD_DECL)
	    {
	      tree field_type = FUNC4 (f);

	      /* canonicalize_component_ref() unwidens some bit-field
		 types (not marked as DECL_BIT_FIELD in C++), so we
		 must do the same, lest we may introduce type
		 mismatches.  */
	      if (FUNC1 (field_type)
		  && FUNC0 (f) != FUNC9 (field_type))
		field_type = FUNC4 (FUNC12 (FUNC10 (COMPONENT_REF,
							       field_type,
							       elt->element,
							       f, NULL_TREE),
						       NULL_TREE));

	      FUNC13 (elt, f, field_type);
	    }
	break;
      }

    case ARRAY_TYPE:
      {
	tree i, max, subtype;

	i = FUNC8 (FUNC5 (type));
	max = FUNC7 (FUNC5 (type));
	subtype = FUNC4 (type);

	while (1)
	  {
	    FUNC13 (elt, i, subtype);
	    if (FUNC15 (i, max))
	      break;
	    i = FUNC14 (PLUS_EXPR, i, integer_one_node, true);
	  }

	break;
      }

    case COMPLEX_TYPE:
      type = FUNC4 (type);
      FUNC13 (elt, integer_zero_node, type);
      FUNC13 (elt, integer_one_node, type);
      break;

    default:
      FUNC11 ();
    }
}