
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* c_next; } ;
typedef TYPE_1__ callout ;


 scalar_t__ CALLOUT_FREE_SLOP ;
 int XFREE (TYPE_1__*) ;
 TYPE_1__* free_callouts ;
 scalar_t__ nfree_callouts ;

__attribute__((used)) static void
free_callout(callout *cp)
{
  if (nfree_callouts > CALLOUT_FREE_SLOP) {
    XFREE(cp);
  } else {
    cp->c_next = free_callouts;
    free_callouts = cp;
    nfree_callouts++;
  }
}
