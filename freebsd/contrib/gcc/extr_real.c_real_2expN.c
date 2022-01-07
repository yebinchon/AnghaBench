
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * sig; int cl; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int MAX_EXP ;
 int SET_REAL_EXP (TYPE_1__*,int) ;
 int SIGSZ ;
 int SIG_MSB ;
 int memset (TYPE_1__*,int ,int) ;
 int rvc_inf ;
 int rvc_normal ;

void
real_2expN (REAL_VALUE_TYPE *r, int n)
{
  memset (r, 0, sizeof (*r));

  n++;
  if (n > MAX_EXP)
    r->cl = rvc_inf;
  else if (n < -MAX_EXP)
    ;
  else
    {
      r->cl = rvc_normal;
      SET_REAL_EXP (r, n);
      r->sig[SIGSZ-1] = SIG_MSB;
    }
}
