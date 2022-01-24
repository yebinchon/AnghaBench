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
struct sra_elt {int dummy; } ;

/* Variables and functions */
#define  ARRAY_RANGE_REF 135 
#define  ARRAY_REF 134 
#define  COMPONENT_REF 133 
#define  IMAGPART_EXPR 132 
 int /*<<< orphan*/  INSERT ; 
#define  PARM_DECL 131 
 int /*<<< orphan*/  RANGE_EXPR ; 
#define  REALPART_EXPR 130 
 int RECORD_TYPE ; 
#define  RESULT_DECL 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct sra_elt* FUNC9 (struct sra_elt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sra_elt *
FUNC11 (tree expr)
{
  struct sra_elt *elt;
  tree child;

  switch (FUNC0 (expr))
    {
    case VAR_DECL:
    case PARM_DECL:
    case RESULT_DECL:
      if (FUNC8 (expr))
	return FUNC9 (NULL, expr, FUNC2 (expr), INSERT);
      return NULL;

    case ARRAY_REF:
      /* We can't scalarize variable array indices.  */
      if (FUNC7 (expr))
        child = FUNC1 (expr, 1);
      else
	return NULL;
      break;

    case ARRAY_RANGE_REF:
      /* We can't scalarize variable array indices.  */
      if (FUNC10 (expr))
	{
	  tree domain = FUNC3 (FUNC2 (expr));
	  child = FUNC6 (RANGE_EXPR, integer_type_node,
			  FUNC5 (domain), FUNC4 (domain));
	}
      else
	return NULL;
      break;

    case COMPONENT_REF:
      /* Don't look through unions.  */
      if (FUNC0 (FUNC2 (FUNC1 (expr, 0))) != RECORD_TYPE)
	return NULL;
      child = FUNC1 (expr, 1);
      break;

    case REALPART_EXPR:
      child = integer_zero_node;
      break;
    case IMAGPART_EXPR:
      child = integer_one_node;
      break;

    default:
      return NULL;
    }

  elt = FUNC11 (FUNC1 (expr, 0));
  if (elt)
    return FUNC9 (elt, child, FUNC2 (expr), INSERT);
  return NULL;
}