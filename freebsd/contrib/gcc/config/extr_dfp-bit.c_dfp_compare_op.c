
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* dfp_binary_func ) (int *,int *,int *,TYPE_1__*) ;
typedef int decNumber ;
struct TYPE_6__ {int round; } ;
typedef TYPE_1__ decContext ;
typedef int IEEE_TYPE ;
typedef int DFP_C_TYPE ;


 scalar_t__ CONTEXT_ERRORS (TYPE_1__) ;
 int CONTEXT_INIT ;
 int CONTEXT_ROUND ;
 scalar_t__ CONTEXT_TRAPS ;
 int DFP_RAISE (int ) ;
 int HOST_TO_IEEE (int ,int *) ;
 int TO_INTERNAL (int *,int *) ;
 int decContextDefault (TYPE_1__*,int ) ;
 scalar_t__ decNumberIsNegative (int *) ;
 scalar_t__ decNumberIsZero (int *) ;

__attribute__((used)) static inline int
dfp_compare_op (dfp_binary_func op, DFP_C_TYPE arg_a, DFP_C_TYPE arg_b)
{
  IEEE_TYPE a, b;
  decContext context;
  decNumber arg1, arg2, res;
  int result;

  HOST_TO_IEEE (arg_a, &a);
  HOST_TO_IEEE (arg_b, &b);

  decContextDefault (&context, CONTEXT_INIT);
  context.round = CONTEXT_ROUND;

  TO_INTERNAL (&a, &arg1);
  TO_INTERNAL (&b, &arg2);


  op (&res, &arg1, &arg2, &context);

  if (CONTEXT_TRAPS && CONTEXT_ERRORS (context))
    DFP_RAISE (0);

  if (decNumberIsNegative (&res))
    result = -1;
  else if (decNumberIsZero (&res))
    result = 0;
  else
    result = 1;

  return result;
}
