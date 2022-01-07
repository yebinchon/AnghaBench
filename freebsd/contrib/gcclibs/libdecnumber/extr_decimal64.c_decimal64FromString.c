
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int decimal64 ;
typedef int decNumber ;
struct TYPE_7__ {scalar_t__ status; int round; } ;
typedef TYPE_1__ decContext ;


 int DEC_INIT_DECIMAL64 ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decContextSetStatus (TYPE_1__*,scalar_t__) ;
 int decNumberFromString (int *,char const*,TYPE_1__*) ;
 int decimal64FromNumber (int *,int *,TYPE_1__*) ;

decimal64 *
decimal64FromString (decimal64 * result, const char *string, decContext * set)
{
  decContext dc;
  decNumber dn;

  decContextDefault (&dc, DEC_INIT_DECIMAL64);
  dc.round = set->round;

  decNumberFromString (&dn, string, &dc);

  decimal64FromNumber (result, &dn, &dc);
  if (dc.status != 0)
    {
      decContextSetStatus (set, dc.status);
    }
  return result;
}
