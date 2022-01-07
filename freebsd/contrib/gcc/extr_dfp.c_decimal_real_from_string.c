
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int decNumber ;
struct TYPE_5__ {scalar_t__ traps; } ;
typedef TYPE_1__ decContext ;
typedef int REAL_VALUE_TYPE ;


 int DEC_INIT_DECIMAL128 ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decNumberFromString (int *,char*,TYPE_1__*) ;
 int decimal_from_decnumber (int *,int *,TYPE_1__*) ;

void
decimal_real_from_string (REAL_VALUE_TYPE *r, const char *s)
{
  decNumber dn;
  decContext set;
  decContextDefault (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;

  decNumberFromString (&dn, (char *) s, &set);




  decimal_from_decnumber (r, &dn, &set);
}
