
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int decimal128 ;
typedef int decNumber ;
struct TYPE_8__ {int status; scalar_t__ traps; } ;
typedef TYPE_1__ decContext ;
struct TYPE_9__ {scalar_t__ cl; int sign; int decimal; scalar_t__ sig; } ;
typedef TYPE_2__ REAL_VALUE_TYPE ;


 int DEC_INIT_DECIMAL128 ;
 int DEC_Overflow ;
 int decContextDefault (TYPE_1__*,int ) ;
 scalar_t__ decNumberIsInfinite (int *) ;
 scalar_t__ decNumberIsNaN (int *) ;
 scalar_t__ decNumberIsNegative (int *) ;
 scalar_t__ decNumberIsZero (int *) ;
 int decimal128FromNumber (int *,int *,TYPE_1__*) ;
 int memset (TYPE_2__*,int ,int) ;
 void* rvc_inf ;
 scalar_t__ rvc_nan ;
 scalar_t__ rvc_normal ;
 scalar_t__ rvc_zero ;

__attribute__((used)) static void
decimal_from_decnumber (REAL_VALUE_TYPE *r, decNumber *dn, decContext *context)
{
  memset (r, 0, sizeof (REAL_VALUE_TYPE));

  r->cl = rvc_normal;
  if (decNumberIsZero (dn))
    r->cl = rvc_zero;
  if (decNumberIsNaN (dn))
    r->cl = rvc_nan;
  if (decNumberIsInfinite (dn))
    r->cl = rvc_inf;
  if (context->status & DEC_Overflow)
    r->cl = rvc_inf;
  if (decNumberIsNegative (dn))
    r->sign = 1;
  r->decimal = 1;

  if (r->cl != rvc_normal)
    return;

  decContextDefault (context, DEC_INIT_DECIMAL128);
  context->traps = 0;

  decimal128FromNumber ((decimal128 *) r->sig, dn, context);
}
