
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_data {void* note_ptr_cookie; int reorder_fn; } ;
typedef int gt_handle_reorder ;


 int POINTER_HASH (void*) ;
 int gcc_assert (int ) ;
 struct ptr_data* htab_find_with_hash (int ,void*,int ) ;
 int saving_htab ;

void
gt_pch_note_reorder (void *obj, void *note_ptr_cookie,
       gt_handle_reorder reorder_fn)
{
  struct ptr_data *data;

  if (obj == ((void*)0) || obj == (void *) 1)
    return;

  data = htab_find_with_hash (saving_htab, obj, POINTER_HASH (obj));
  gcc_assert (data && data->note_ptr_cookie == note_ptr_cookie);

  data->reorder_fn = reorder_fn;
}
