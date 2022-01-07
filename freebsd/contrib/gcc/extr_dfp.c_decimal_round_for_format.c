
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct real_format {int dummy; } ;
typedef int decimal64 ;
typedef int decimal32 ;
typedef int decimal128 ;
typedef int decNumber ;
struct TYPE_9__ {scalar_t__ traps; } ;
typedef TYPE_1__ decContext ;
struct TYPE_10__ {scalar_t__ cl; scalar_t__ sig; } ;
typedef TYPE_2__ REAL_VALUE_TYPE ;


 int DEC_INIT_DECIMAL128 ;
 int DEC_INIT_DECIMAL32 ;
 int DEC_INIT_DECIMAL64 ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decimal128ToNumber (int *,int *) ;
 int decimal32FromNumber (int *,int *,TYPE_1__*) ;
 int decimal32ToNumber (int *,int *) ;
 int decimal64FromNumber (int *,int *,TYPE_1__*) ;
 int decimal64ToNumber (int *,int *) ;
 struct real_format const decimal_double_format ;
 int decimal_from_decnumber (TYPE_2__*,int *,TYPE_1__*) ;
 struct real_format const decimal_quad_format ;
 struct real_format const decimal_single_format ;
 int gcc_unreachable () ;
 scalar_t__ rvc_normal ;

void
decimal_round_for_format (const struct real_format *fmt, REAL_VALUE_TYPE *r)
{
  decNumber dn;
  decContext set;


  if (r->cl != rvc_normal)
    return;

  decContextDefault (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;
  decimal128ToNumber ((decimal128 *) r->sig, &dn);

  if (fmt == &decimal_quad_format)
    {

      return;
    }
  else if (fmt == &decimal_single_format)
    {
      decimal32 d32;
      decContextDefault (&set, DEC_INIT_DECIMAL32);
      set.traps = 0;

      decimal32FromNumber (&d32, &dn, &set);
      decimal32ToNumber (&d32, &dn);
    }
  else if (fmt == &decimal_double_format)
    {
      decimal64 d64;
      decContextDefault (&set, DEC_INIT_DECIMAL64);
      set.traps = 0;

      decimal64FromNumber (&d64, &dn, &set);
      decimal64ToNumber (&d64, &dn);
    }
  else
    gcc_unreachable ();

  decimal_from_decnumber (r, &dn, &set);
}
