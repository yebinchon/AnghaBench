
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exp; int sig; int sig_hi; int sig_lo; } ;
typedef TYPE_1__ sreal ;



__attribute__((used)) static inline void
copy (sreal *r, sreal *a)
{

  r->sig_lo = a->sig_lo;
  r->sig_hi = a->sig_hi;



  r->exp = a->exp;
}
