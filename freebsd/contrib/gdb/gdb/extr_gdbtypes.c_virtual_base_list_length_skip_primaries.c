
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbase {int vbasetype; struct vbase* next; } ;
struct type {int dummy; } ;


 struct type* TYPE_PRIMARY_BASE (struct type*) ;
 scalar_t__ TYPE_RUNTIME_PTR (struct type*) ;
 struct vbase* current_vbase_list ;
 scalar_t__ virtual_base_index (int ,struct type*) ;
 int virtual_base_list_aux (struct type*) ;
 int virtual_base_list_length (struct type*) ;

int
virtual_base_list_length_skip_primaries (struct type *dclass)
{
  int i;
  struct vbase *tmp_vbase;
  struct type *primary;

  primary = TYPE_RUNTIME_PTR (dclass) ? TYPE_PRIMARY_BASE (dclass) : ((void*)0);

  if (!primary)
    return virtual_base_list_length (dclass);

  current_vbase_list = ((void*)0);
  virtual_base_list_aux (dclass);

  for (i = 0, tmp_vbase = current_vbase_list; tmp_vbase != ((void*)0); tmp_vbase = tmp_vbase->next)
    {
      if (virtual_base_index (tmp_vbase->vbasetype, primary) >= 0)
 continue;
      i++;
    }
  return i;
}
