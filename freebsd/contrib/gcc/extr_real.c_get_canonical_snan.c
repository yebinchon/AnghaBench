
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sign; int signalling; int canonical; int cl; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int memset (TYPE_1__*,int ,int) ;
 int rvc_nan ;

__attribute__((used)) static inline void
get_canonical_snan (REAL_VALUE_TYPE *r, int sign)
{
  memset (r, 0, sizeof (*r));
  r->cl = rvc_nan;
  r->sign = sign;
  r->signalling = 1;
  r->canonical = 1;
}
