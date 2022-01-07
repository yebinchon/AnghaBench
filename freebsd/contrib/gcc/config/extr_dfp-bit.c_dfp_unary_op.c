
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int (* dfp_unary_func ) (int *,int *,TYPE_1__*) ;
typedef int decNumber ;
struct TYPE_7__ {int round; } ;
typedef TYPE_1__ decContext ;
typedef int IEEE_TYPE ;
typedef int DFP_C_TYPE ;


 scalar_t__ CONTEXT_ERRORS (TYPE_1__) ;
 int CONTEXT_INIT ;
 int CONTEXT_ROUND ;
 scalar_t__ CONTEXT_TRAPS ;
 int DFP_RAISE (int ) ;
 int HOST_TO_IEEE (int ,int *) ;
 int IEEE_TO_HOST (int ,int *) ;
 int TO_ENCODED (int *,int *,TYPE_1__*) ;
 int TO_INTERNAL (int *,int *) ;
 int decContextDefault (TYPE_1__*,int ) ;

__attribute__((used)) static inline DFP_C_TYPE
dfp_unary_op (dfp_unary_func op, DFP_C_TYPE arg)
{
  DFP_C_TYPE result;
  decContext context;
  decNumber arg1, res;
  IEEE_TYPE a, encoded_result;

  HOST_TO_IEEE (arg, &a);

  decContextDefault (&context, CONTEXT_INIT);
  context.round = CONTEXT_ROUND;

  TO_INTERNAL (&a, &arg1);


  op (&res, &arg1, &context);

  if (CONTEXT_TRAPS && CONTEXT_ERRORS (context))
    DFP_RAISE (0);

  TO_ENCODED (&encoded_result, &res, &context);
  IEEE_TO_HOST (encoded_result, &result);
  return result;
}
