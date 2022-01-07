
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ opt; } ;
typedef TYPE_1__ opt_apply ;


 void stub1 (TYPE_1__*,int) ;

__attribute__((used)) static void
apply_opts(void (*op) (opt_apply *, int), opt_apply ppp[], int b)
{
  opt_apply *pp;

  for (pp = ppp; pp->opt; pp++)
    (*op) (pp, b);
}
