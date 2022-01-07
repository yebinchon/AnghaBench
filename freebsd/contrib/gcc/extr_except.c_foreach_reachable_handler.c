
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
struct reachable_info {void (* callback ) (struct eh_region*,void*) ;void* callback_data; } ;
struct TYPE_8__ {struct eh_region* prev_try; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_9__ {TYPE_3__ cleanup; TYPE_2__ throw; } ;
struct eh_region {scalar_t__ type; struct eh_region* outer; TYPE_4__ u; } ;
typedef int info ;
struct TYPE_10__ {TYPE_1__* eh; } ;
struct TYPE_6__ {int region_array; } ;


 scalar_t__ ERT_CLEANUP ;
 scalar_t__ ERT_THROW ;
 int NULL_TREE ;
 scalar_t__ RNL_CAUGHT ;
 struct eh_region* VEC_index (int ,int ,int) ;
 TYPE_5__* cfun ;
 int eh_region ;
 int memset (struct reachable_info*,int ,int) ;
 scalar_t__ reachable_next_level (struct eh_region*,int ,struct reachable_info*) ;

void
foreach_reachable_handler (int region_number, bool is_resx,
      void (*callback) (struct eh_region *, void *),
      void *callback_data)
{
  struct reachable_info info;
  struct eh_region *region;
  tree type_thrown;

  memset (&info, 0, sizeof (info));
  info.callback = callback;
  info.callback_data = callback_data;

  region = VEC_index (eh_region, cfun->eh->region_array, region_number);

  type_thrown = NULL_TREE;
  if (is_resx)
    {


      if (region == ((void*)0))
 return;
      region = region->outer;
    }
  else if (region->type == ERT_THROW)
    {
      type_thrown = region->u.throw.type;
      region = region->outer;
    }

  while (region)
    {
      if (reachable_next_level (region, type_thrown, &info) >= RNL_CAUGHT)
 break;




      if (region->type == ERT_CLEANUP)
 region = region->u.cleanup.prev_try;
      else
 region = region->outer;
    }
}
