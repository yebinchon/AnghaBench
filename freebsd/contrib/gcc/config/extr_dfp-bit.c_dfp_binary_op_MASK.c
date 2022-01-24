#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* dfp_binary_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ;
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_7__ {int /*<<< orphan*/  round; } ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline DFP_C_TYPE
FUNC7 (dfp_binary_func op, DFP_C_TYPE arg_a, DFP_C_TYPE arg_b)
{
  DFP_C_TYPE result;
  decContext context;
  decNumber arg1, arg2, res;
  IEEE_TYPE a, b, encoded_result;

  FUNC2 (arg_a, &a);
  FUNC2 (arg_b, &b);

  FUNC6 (&context, CONTEXT_INIT);
  context.round = CONTEXT_ROUND;

  FUNC5 (&a, &arg1);
  FUNC5 (&b, &arg2);

  /* Perform the operation.  */
  op (&res, &arg1, &arg2, &context);

  if (CONTEXT_TRAPS && FUNC0 (context))
    FUNC1 (0);

  FUNC4 (&encoded_result, &res, &context);
  FUNC3 (encoded_result, &result);
  return result;
}