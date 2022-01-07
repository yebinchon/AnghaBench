
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbase {struct vbase* next; struct type* vbasetype; } ;
struct type {int dummy; } ;


 struct vbase* current_vbase_list ;
 int virtual_base_list_aux (struct type*) ;
 int xfree (struct vbase*) ;
 scalar_t__ xmalloc (int) ;

struct type **
virtual_base_list (struct type *dclass)
{
  struct vbase *tmp_vbase;
  struct vbase *tmp_vbase_2;
  int i;
  int count;
  struct type **vbase_array;

  current_vbase_list = ((void*)0);
  virtual_base_list_aux (dclass);

  for (i = 0, tmp_vbase = current_vbase_list; tmp_vbase != ((void*)0); i++, tmp_vbase = tmp_vbase->next)
                  ;

  count = i;

  vbase_array = (struct type **) xmalloc ((count + 1) * sizeof (struct type *));

  for (i = count - 1, tmp_vbase = current_vbase_list; i >= 0; i--, tmp_vbase = tmp_vbase->next)
    vbase_array[i] = tmp_vbase->vbasetype;


  tmp_vbase_2 = tmp_vbase = current_vbase_list;
  while (tmp_vbase)
    {
      tmp_vbase = tmp_vbase->next;
      xfree (tmp_vbase_2);
      tmp_vbase_2 = tmp_vbase;
    }

  vbase_array[count] = ((void*)0);
  return vbase_array;
}
