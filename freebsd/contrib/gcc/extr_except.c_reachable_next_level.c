
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * tree ;
struct reachable_info {int saw_any_handlers; int * types_allowed; int * types_caught; } ;
struct TYPE_8__ {int * type_list; } ;
struct TYPE_7__ {int * type_list; struct eh_region* next_catch; } ;
struct TYPE_6__ {struct eh_region* catch; } ;
struct TYPE_9__ {TYPE_3__ allowed; TYPE_2__ catch; TYPE_1__ try; } ;
struct eh_region {int type; TYPE_4__ u; } ;
typedef enum reachable_code { ____Placeholder_reachable_code } reachable_code ;
struct TYPE_10__ {int after_inlining; } ;
 int * NULL_TREE ;
 int RNL_BLOCKED ;
 int RNL_CAUGHT ;
 int RNL_MAYBE_CAUGHT ;
 int RNL_NOT_CAUGHT ;
 int * TREE_CHAIN (int *) ;
 int * TREE_VALUE (int *) ;
 int add_reachable_handler (struct reachable_info*,struct eh_region*,struct eh_region*) ;
 TYPE_5__* cfun ;
 int check_handled (int *,int *) ;
 int gcc_unreachable () ;
 int lang_eh_type_covers (int *,int *) ;
 int stub1 (int *,int *) ;
 void* tree_cons (int *,int *,int *) ;

__attribute__((used)) static enum reachable_code
reachable_next_level (struct eh_region *region, tree type_thrown,
        struct reachable_info *info)
{
  switch (region->type)
    {
    case 132:



      add_reachable_handler (info, region, region);
      return RNL_MAYBE_CAUGHT;

    case 129:
      {
 struct eh_region *c;
 enum reachable_code ret = RNL_NOT_CAUGHT;

 for (c = region->u.try.catch; c ; c = c->u.catch.next_catch)
   {

     if (c->u.catch.type_list == ((void*)0))
       {
  add_reachable_handler (info, region, c);
  return RNL_CAUGHT;
       }

     if (type_thrown)
       {

  tree tp_node = c->u.catch.type_list;

  for (; tp_node; tp_node = TREE_CHAIN (tp_node))
    {
      tree type = TREE_VALUE (tp_node);

      if (type == type_thrown
   || (lang_eh_type_covers
       && (*lang_eh_type_covers) (type, type_thrown)))
        {
   add_reachable_handler (info, region, c);
   return RNL_CAUGHT;
        }
    }



  if (lang_eh_type_covers)
    return RNL_NOT_CAUGHT;
       }
     if (! info)
       ret = RNL_MAYBE_CAUGHT;
     else
       {
  tree tp_node = c->u.catch.type_list;
  bool maybe_reachable = 0;



  for (; tp_node; tp_node = TREE_CHAIN (tp_node))
    {
      tree type = TREE_VALUE (tp_node);

      if (! check_handled (info->types_caught, type))
        {
   info->types_caught
     = tree_cons (((void*)0), type, info->types_caught);

   maybe_reachable = 1;
        }
    }

  if (maybe_reachable)
    {
      add_reachable_handler (info, region, c);



      ret = RNL_MAYBE_CAUGHT;
    }
       }
   }

 return ret;
      }

    case 134:

      if (region->u.allowed.type_list == NULL_TREE)
 {
   add_reachable_handler (info, region, region);
   return RNL_CAUGHT;
 }



      if (info)
 info->types_allowed = tree_cons (NULL_TREE,
      region->u.allowed.type_list,
      info->types_allowed);




      if (type_thrown && lang_eh_type_covers)
 {
   if (check_handled (region->u.allowed.type_list, type_thrown))
     return RNL_NOT_CAUGHT;
   else
     {
       add_reachable_handler (info, region, region);
       return RNL_CAUGHT;
     }
 }

      add_reachable_handler (info, region, region);
      return RNL_MAYBE_CAUGHT;

    case 133:

      return RNL_NOT_CAUGHT;

    case 131:
      if ((info && info->saw_any_handlers) || !cfun->after_inlining)
 {
   add_reachable_handler (info, region, region);
   return RNL_CAUGHT;
 }
      else
 return RNL_BLOCKED;

    case 130:
    case 128:

      gcc_unreachable ();
      break;
    default:
      gcc_unreachable ();
    }
}
