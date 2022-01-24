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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int const FUNC1 (struct type*) ; 
#define  TYPE_CODE_ARRAY 135 
#define  TYPE_CODE_ENUM 134 
#define  TYPE_CODE_FLT 133 
#define  TYPE_CODE_INT 132 
#define  TYPE_CODE_PTR 131 
#define  TYPE_CODE_RANGE 130 
 int const TYPE_CODE_REF ; 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 int const TYPE_CODE_VOID ; 
 struct type* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct type*) ; 

__attribute__((used)) static int
FUNC4 (struct type *ftype, struct type *atype, int may_deref)
{
  FUNC0 (ftype);
  FUNC0 (atype);

  if (FUNC1 (ftype) == TYPE_CODE_REF)
    ftype = FUNC2 (ftype);
  if (FUNC1 (atype) == TYPE_CODE_REF)
    atype = FUNC2 (atype);

  if (FUNC1 (ftype) == TYPE_CODE_VOID
      || FUNC1 (atype) == TYPE_CODE_VOID)
    return 1;

  switch (FUNC1 (ftype))
    {
    default:
      return 1;
    case TYPE_CODE_PTR:
      if (FUNC1 (atype) == TYPE_CODE_PTR)
	return FUNC4 (FUNC2 (ftype),
			       FUNC2 (atype), 0);
      else
	return (may_deref &&
		FUNC4 (FUNC2 (ftype), atype, 0));
    case TYPE_CODE_INT:
    case TYPE_CODE_ENUM:
    case TYPE_CODE_RANGE:
      switch (FUNC1 (atype))
	{
	case TYPE_CODE_INT:
	case TYPE_CODE_ENUM:
	case TYPE_CODE_RANGE:
	  return 1;
	default:
	  return 0;
	}

    case TYPE_CODE_ARRAY:
      return (FUNC1 (atype) == TYPE_CODE_ARRAY
	      || FUNC3 (atype));

    case TYPE_CODE_STRUCT:
      if (FUNC3 (ftype))
	return (FUNC1 (atype) == TYPE_CODE_ARRAY
		|| FUNC3 (atype));
      else
	return (FUNC1 (atype) == TYPE_CODE_STRUCT
		&& !FUNC3 (atype));

    case TYPE_CODE_UNION:
    case TYPE_CODE_FLT:
      return (FUNC1 (atype) == FUNC1 (ftype));
    }
}