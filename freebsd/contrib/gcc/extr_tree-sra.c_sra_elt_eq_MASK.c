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
struct sra_elt {scalar_t__ parent; scalar_t__ element; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
#define  FIELD_DECL 133 
#define  INTEGER_CST 132 
#define  PARM_DECL 131 
#define  RANGE_EXPR 130 
#define  RESULT_DECL 129 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
#define  VAR_DECL 128 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6 (const void *x, const void *y)
{
  const struct sra_elt *a = x;
  const struct sra_elt *b = y;
  tree ae, be;

  if (a->parent != b->parent)
    return false;

  ae = a->element;
  be = b->element;

  if (ae == be)
    return true;
  if (FUNC1 (ae) != FUNC1 (be))
    return false;

  switch (FUNC1 (ae))
    {
    case VAR_DECL:
    case PARM_DECL:
    case RESULT_DECL:
      /* These are all pointer unique.  */
      return false;

    case INTEGER_CST:
      /* Integers are not pointer unique, so compare their values.  */
      return FUNC5 (ae, be);

    case RANGE_EXPR:
      return
	FUNC5 (FUNC2 (ae, 0), FUNC2 (be, 0))
	&& FUNC5 (FUNC2 (ae, 1), FUNC2 (be, 1));

    case FIELD_DECL:
      /* Fields are unique within a record, but not between
	 compatible records.  */
      if (FUNC0 (ae) == FUNC0 (be))
	return false;
      return FUNC3 (ae, be);

    default:
      FUNC4 ();
    }
}