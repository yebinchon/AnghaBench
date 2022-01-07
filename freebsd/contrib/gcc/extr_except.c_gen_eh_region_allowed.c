
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ type_list; } ;
struct TYPE_4__ {TYPE_1__ allowed; } ;
struct eh_region {TYPE_2__ u; } ;


 int ERT_ALLOWED_EXCEPTIONS ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int add_type_for_runtime (int ) ;
 struct eh_region* gen_eh_region (int ,struct eh_region*) ;

struct eh_region *
gen_eh_region_allowed (struct eh_region *outer, tree allowed)
{
  struct eh_region *region = gen_eh_region (ERT_ALLOWED_EXCEPTIONS, outer);
  region->u.allowed.type_list = allowed;

  for (; allowed ; allowed = TREE_CHAIN (allowed))
    add_type_for_runtime (TREE_VALUE (allowed));

  return region;
}
