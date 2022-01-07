
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct eh_region* prev_try; } ;
struct TYPE_4__ {TYPE_1__ cleanup; } ;
struct eh_region {TYPE_2__ u; } ;


 int ERT_CLEANUP ;
 struct eh_region* gen_eh_region (int ,struct eh_region*) ;

struct eh_region *
gen_eh_region_cleanup (struct eh_region *outer, struct eh_region *prev_try)
{
  struct eh_region *cleanup = gen_eh_region (ERT_CLEANUP, outer);
  cleanup->u.cleanup.prev_try = prev_try;
  return cleanup;
}
