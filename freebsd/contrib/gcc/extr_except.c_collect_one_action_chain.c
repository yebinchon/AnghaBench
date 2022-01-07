
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_7__ {int filter; } ;
struct TYPE_6__ {int filter_list; int * type_list; struct eh_region* prev_catch; } ;
struct TYPE_5__ {struct eh_region* last_catch; } ;
struct TYPE_8__ {TYPE_3__ allowed; TYPE_2__ catch; TYPE_1__ try; } ;
struct eh_region {int type; struct eh_region* outer; TYPE_4__ u; } ;
typedef int htab_t ;
 int TREE_CHAIN (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_VALUE (int ) ;
 int add_action_record (int ,int,int) ;
 int gcc_unreachable () ;

__attribute__((used)) static int
collect_one_action_chain (htab_t ar_hash, struct eh_region *region)
{
  struct eh_region *c;
  int next;



  if (region == ((void*)0))
    return -1;

  switch (region->type)
    {
    case 131:






      next = collect_one_action_chain (ar_hash, region->outer);
      if (next <= 0)
 return 0;
      for (c = region->outer; c ; c = c->outer)
 if (c->type == 131)
   return next;
      return add_action_record (ar_hash, 0, next);

    case 128:




      next = -3;
      for (c = region->u.try.last_catch; c ; c = c->u.catch.prev_catch)
 {
   if (c->u.catch.type_list == ((void*)0))
     {


       int filter
  = TREE_INT_CST_LOW (TREE_VALUE (c->u.catch.filter_list));

       next = add_action_record (ar_hash, filter, 0);
     }
   else
     {


       tree flt_node;

       if (next == -3)
  {
    next = collect_one_action_chain (ar_hash, region->outer);


    if (next == -1)
      next = 0;




    else if (next <= 0)
      next = add_action_record (ar_hash, 0, 0);
  }

       flt_node = c->u.catch.filter_list;
       for (; flt_node; flt_node = TREE_CHAIN (flt_node))
  {
    int filter = TREE_INT_CST_LOW (TREE_VALUE (flt_node));
    next = add_action_record (ar_hash, filter, next);
  }
     }
 }
      return next;

    case 133:


      next = collect_one_action_chain (ar_hash, region->outer);


      if (next == -1)
 next = 0;




      else if (next <= 0)
 next = add_action_record (ar_hash, 0, 0);

      return add_action_record (ar_hash, region->u.allowed.filter, next);

    case 130:




      return -2;

    case 132:
    case 129:


      return collect_one_action_chain (ar_hash, region->outer);

    default:
      gcc_unreachable ();
    }
}
