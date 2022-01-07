
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct km_object_info {int unseen_objects; int seen_objects; } ;
struct dwarf_eh_bases {int dummy; } ;
typedef int fde ;


 int KEYMGR_GCC3_DW2_OBJ_LIST ;
 int * _Unwind_Find_registered_FDE (void*,struct dwarf_eh_bases*) ;
 struct km_object_info* _keymgr_get_and_lock_processwide_ptr (int ) ;
 int _keymgr_set_and_unlock_processwide_ptr (int ,struct km_object_info*) ;
 struct km_object_info* calloc (int,int) ;
 int * examine_objects (void*,struct dwarf_eh_bases*,int ) ;
 int seen_objects ;
 int unseen_objects ;

const fde *
_Unwind_Find_FDE (void *pc, struct dwarf_eh_bases *bases)
{
  struct km_object_info *the_obj_info;
  const fde *ret = ((void*)0);

  the_obj_info =
    _keymgr_get_and_lock_processwide_ptr (KEYMGR_GCC3_DW2_OBJ_LIST);
  if (! the_obj_info)
    the_obj_info = calloc (1, sizeof (*the_obj_info));

  if (the_obj_info != ((void*)0))
    {
      seen_objects = the_obj_info->seen_objects;
      unseen_objects = the_obj_info->unseen_objects;

      ret = _Unwind_Find_registered_FDE (pc, bases);
    }



  if (ret == ((void*)0))
    ret = examine_objects (pc, bases, the_obj_info == ((void*)0));

  if (the_obj_info != ((void*)0))
    {
      the_obj_info->seen_objects = seen_objects;
      the_obj_info->unseen_objects = unseen_objects;
    }
  _keymgr_set_and_unlock_processwide_ptr (KEYMGR_GCC3_DW2_OBJ_LIST,
       the_obj_info);
  return ret;
}
