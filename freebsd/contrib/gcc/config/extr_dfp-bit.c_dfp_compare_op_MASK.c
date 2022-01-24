#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* dfp_binary_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ;
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_6__ {int /*<<< orphan*/  round; } ;
typedef  TYPE_1__ decContext ;
typedef  int /*<<< orphan*/  IEEE_TYPE ;
typedef  int /*<<< orphan*/  DFP_C_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  CONTEXT_INIT ; 
 int /*<<< orphan*/  CONTEXT_ROUND ; 
 scalar_t__ CONTEXT_TRAPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC7 (dfp_binary_func op, DFP_C_TYPE arg_a, DFP_C_TYPE arg_b)
{
  IEEE_TYPE a, b;
  decContext context;
  decNumber arg1, arg2, res;
  int result;

  FUNC2 (arg_a, &a);
  FUNC2 (arg_b, &b);

  FUNC4 (&context, CONTEXT_INIT);
  context.round = CONTEXT_ROUND;

  FUNC3 (&a, &arg1);
  FUNC3 (&b, &arg2);

  /* Perform the comparison.  */
  op (&res, &arg1, &arg2, &context);

  if (CONTEXT_TRAPS && FUNC0 (context))
    FUNC1 (0);

  if (FUNC5 (&res))
    result = -1;
  else if (FUNC6 (&res))
    result = 0;
  else
    result = 1;

  return result;
}