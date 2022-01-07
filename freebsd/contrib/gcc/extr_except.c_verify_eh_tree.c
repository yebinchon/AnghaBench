
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct function {TYPE_1__* eh; } ;
struct eh_region {int region_number; struct eh_region* next_peer; struct eh_region* outer; struct eh_region* inner; scalar_t__ may_contain_throw; } ;
struct TYPE_6__ {TYPE_2__* eh; } ;
struct TYPE_5__ {int region_array; } ;
struct TYPE_4__ {int last_region_number; struct eh_region* region_tree; } ;


 struct eh_region* VEC_index (int ,int ,int) ;
 TYPE_3__* cfun ;
 int dump_eh_tree (int ,struct function*) ;
 int eh_region ;
 int error (char*,...) ;
 int internal_error (char*) ;
 int stderr ;

void
verify_eh_tree (struct function *fun)
{
  struct eh_region *i, *outer = ((void*)0);
  bool err = 0;
  int nvisited = 0;
  int count = 0;
  int j;
  int depth = 0;

  i = fun->eh->region_tree;
  if (! i)
    return;
  for (j = fun->eh->last_region_number; j > 0; --j)
    if ((i = VEC_index (eh_region, cfun->eh->region_array, j)))
      {
 count++;
 if (i->region_number != j)
   {
     error ("region_array is corrupted for region %i", i->region_number);
     err = 1;
   }
      }

  while (1)
    {
      if (VEC_index (eh_region, cfun->eh->region_array, i->region_number) != i)
 {
   error ("region_array is corrupted for region %i", i->region_number);
   err = 1;
 }
      if (i->outer != outer)
 {
   error ("outer block of region %i is wrong", i->region_number);
   err = 1;
 }
      if (i->may_contain_throw && outer && !outer->may_contain_throw)
 {
   error ("region %i may contain throw and is contained in region that may not",
   i->region_number);
   err = 1;
 }
      if (depth < 0)
 {
   error ("negative nesting depth of region %i", i->region_number);
   err = 1;
 }
      nvisited ++;

      if (i->inner)
 outer = i, i = i->inner, depth++;

      else if (i->next_peer)
 i = i->next_peer;

      else
 {
   do {
     i = i->outer;
     depth--;
     if (i == ((void*)0))
       {
  if (depth != -1)
    {
      error ("tree list ends on depth %i", depth + 1);
      err = 1;
    }
  if (count != nvisited)
    {
      error ("array does not match the region tree");
      err = 1;
    }
  if (err)
    {
      dump_eh_tree (stderr, fun);
      internal_error ("verify_eh_tree failed");
    }
         return;
       }
     outer = i->outer;
   } while (i->next_peer == ((void*)0));
   i = i->next_peer;
 }
    }
}
