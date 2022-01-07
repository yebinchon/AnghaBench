
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned long* sig; int sign; int cl; scalar_t__ decimal; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int HOST_BITS_PER_LONG ;
 int MAX_EXP ;
 int REAL_EXP (TYPE_1__*) ;
 int SET_REAL_EXP (TYPE_1__*,int) ;
 int SIGSZ ;
 int get_inf (TYPE_1__*,int ) ;
 int get_zero (TYPE_1__*,int ) ;
 int lshift_significand (TYPE_1__*,TYPE_1__*,int) ;
 int rvc_zero ;

__attribute__((used)) static void
normalize (REAL_VALUE_TYPE *r)
{
  int shift = 0, exp;
  int i, j;

  if (r->decimal)
    return;


  for (i = SIGSZ - 1; i >= 0; i--)
    if (r->sig[i] == 0)
      shift += HOST_BITS_PER_LONG;
    else
      break;


  if (i < 0)
    {
      r->cl = rvc_zero;
      SET_REAL_EXP (r, 0);
      return;
    }


  for (j = 0; ; j++)
    if (r->sig[i] & ((unsigned long)1 << (HOST_BITS_PER_LONG - 1 - j)))
      break;
  shift += j;

  if (shift > 0)
    {
      exp = REAL_EXP (r) - shift;
      if (exp > MAX_EXP)
 get_inf (r, r->sign);
      else if (exp < -MAX_EXP)
 get_zero (r, r->sign);
      else
 {
   SET_REAL_EXP (r, exp);
   lshift_significand (r, r, shift);
 }
    }
}
