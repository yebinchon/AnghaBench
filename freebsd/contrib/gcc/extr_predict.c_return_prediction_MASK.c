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
typedef  enum prediction { ____Placeholder_prediction } prediction ;
typedef  enum br_predictor { ____Placeholder_br_predictor } br_predictor ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NOT_TAKEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PRED_NEGATIVE_RETURN ; 
 int PRED_NO_PREDICTION ; 
 int PRED_NULL_RETURN ; 
 int TAKEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum br_predictor
FUNC8 (tree val, enum prediction *prediction)
{
  /* VOID.  */
  if (!val)
    return PRED_NO_PREDICTION;
  /* Different heuristics for pointers and scalars.  */
  if (FUNC1 (FUNC4 (val)))
    {
      /* NULL is usually not returned.  */
      if (FUNC6 (val))
	{
	  *prediction = NOT_TAKEN;
	  return PRED_NULL_RETURN;
	}
    }
  else if (FUNC0 (FUNC4 (val)))
    {
      /* Negative return values are often used to indicate
         errors.  */
      if (FUNC2 (val) == INTEGER_CST
	  && FUNC7 (val) < 0)
	{
	  *prediction = NOT_TAKEN;
	  return PRED_NEGATIVE_RETURN;
	}
      /* Constant return values seems to be commonly taken.
         Zero/one often represent booleans so exclude them from the
	 heuristics.  */
      if (FUNC3 (val)
	  && (!FUNC6 (val) && !FUNC5 (val)))
	{
	  *prediction = TAKEN;
	  return PRED_NEGATIVE_RETURN;
	}
    }
  return PRED_NO_PREDICTION;
}