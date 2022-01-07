
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gfp_t ;
struct TYPE_2__ {int attr; scalar_t__ ignore_gfp_wait; } ;


 int __GFP_NOFAIL ;
 int __GFP_WAIT ;
 TYPE_1__ failslab ;
 int should_fail (int *,size_t) ;

bool should_failslab(size_t size, gfp_t gfpflags)
{
 if (gfpflags & __GFP_NOFAIL)
  return 0;

        if (failslab.ignore_gfp_wait && (gfpflags & __GFP_WAIT))
  return 0;

 return should_fail(&failslab.attr, size);
}
