
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int decimal128 ;
struct TYPE_12__ {int bits; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_13__ {scalar_t__ traps; } ;
typedef TYPE_2__ decContext ;
struct TYPE_14__ {int cl; scalar_t__ sign; scalar_t__ sig; int decimal; int signalling; } ;
typedef TYPE_3__ REAL_VALUE_TYPE ;


 int DECNEG ;
 int DEC_INIT_DECIMAL128 ;
 int decContextDefault (TYPE_2__*,int ) ;
 int decNumberFromString (TYPE_1__*,char*,TYPE_2__*) ;
 scalar_t__ decNumberIsNegative (TYPE_1__*) ;
 int decNumberZero (TYPE_1__*) ;
 int decimal128ToNumber (int *,TYPE_1__*) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;





__attribute__((used)) static void
decimal_to_decnumber (const REAL_VALUE_TYPE *r, decNumber *dn)
{
  decContext set;
  decContextDefault (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;

  switch (r->cl)
    {
    case 128:
      decNumberZero (dn);
      break;
    case 131:
      decNumberFromString (dn, (char *)"Infinity", &set);
      break;
    case 130:
      if (r->signalling)
        decNumberFromString (dn, (char *)"snan", &set);
      else
        decNumberFromString (dn, (char *)"nan", &set);
      break;
    case 129:
      gcc_assert (r->decimal);
      decimal128ToNumber ((decimal128 *) r->sig, dn);
      break;
    default:
      gcc_unreachable ();
    }


  if (r->sign != decNumberIsNegative (dn))
    dn->bits ^= DECNEG;
}
