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
#define  COMPLEX_CST 131 
#define  INTEGER_CST 130 
 int /*<<< orphan*/  OPT_Woverflow ; 
#define  REAL_CST 129 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  VECTOR_CST 128 
 scalar_t__ skip_evaluation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void
FUNC3 (tree value)
{
  if (skip_evaluation) return;

  switch (FUNC0 (value))
    {
    case INTEGER_CST:
      FUNC2 (OPT_Woverflow, "integer overflow in expression");
      break;
      
    case REAL_CST:
      FUNC2 (OPT_Woverflow, "floating point overflow in expression");
      break;
      
    case VECTOR_CST:
      FUNC2 (OPT_Woverflow, "vector overflow in expression");
      break;
      
    case COMPLEX_CST:
      if (FUNC0 (FUNC1 (value)) == INTEGER_CST)
	FUNC2 (OPT_Woverflow, "complex integer overflow in expression");
      else if (FUNC0 (FUNC1 (value)) == REAL_CST)
	FUNC2 (OPT_Woverflow, "complex floating point overflow in expression");
      break;

    default:
      break;
    }
}