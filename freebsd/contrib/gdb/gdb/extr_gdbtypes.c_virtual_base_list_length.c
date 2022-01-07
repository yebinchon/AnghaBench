
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbase {struct vbase* next; } ;
struct type {int dummy; } ;


 struct vbase* current_vbase_list ;
 int virtual_base_list_aux (struct type*) ;

int
virtual_base_list_length (struct type *dclass)
{
  int i;
  struct vbase *tmp_vbase;

  current_vbase_list = ((void*)0);
  virtual_base_list_aux (dclass);

  for (i = 0, tmp_vbase = current_vbase_list; tmp_vbase != ((void*)0); i++, tmp_vbase = tmp_vbase->next)
                  ;
  return i;
}
