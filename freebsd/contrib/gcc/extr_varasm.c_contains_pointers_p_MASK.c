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

/* Variables and functions */
#define  ARRAY_TYPE 134 
 int FIELD_DECL ; 
#define  OFFSET_TYPE 133 
#define  POINTER_TYPE 132 
#define  QUAL_UNION_TYPE 131 
#define  RECORD_TYPE 130 
#define  REFERENCE_TYPE 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 128 

__attribute__((used)) static int
FUNC4 (tree type)
{
  switch (FUNC1 (type))
    {
    case POINTER_TYPE:
    case REFERENCE_TYPE:
      /* I'm not sure whether OFFSET_TYPE needs this treatment,
	 so I'll play safe and return 1.  */
    case OFFSET_TYPE:
      return 1;

    case RECORD_TYPE:
    case UNION_TYPE:
    case QUAL_UNION_TYPE:
      {
	tree fields;
	/* For a type that has fields, see if the fields have pointers.  */
	for (fields = FUNC3 (type); fields; fields = FUNC0 (fields))
	  if (FUNC1 (fields) == FIELD_DECL
	      && FUNC4 (FUNC2 (fields)))
	    return 1;
	return 0;
      }

    case ARRAY_TYPE:
      /* An array type contains pointers if its element type does.  */
      return FUNC4 (FUNC2 (type));

    default:
      return 0;
    }
}