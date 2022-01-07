
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ link; } ;
struct TYPE_6__ {TYPE_2__ i; } ;
struct TYPE_4__ {int type; TYPE_3__ u; } ;
struct coff_link_hash_entry {scalar_t__ indx; TYPE_1__ root; } ;
struct coff_final_link_info {void* global_to_static; } ;
typedef void* bfd_boolean ;


 void* TRUE ;
 void* _bfd_coff_write_global_sym (struct coff_link_hash_entry*,void*) ;


 int bfd_link_hash_warning ;

bfd_boolean
_bfd_coff_write_task_globals (struct coff_link_hash_entry *h, void *data)
{
  struct coff_final_link_info *finfo = (struct coff_final_link_info *) data;
  bfd_boolean rtnval = TRUE;
  bfd_boolean save_global_to_static;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct coff_link_hash_entry *) h->root.u.i.link;

  if (h->indx < 0)
    {
      switch (h->root.type)
 {
 case 129:
 case 128:
   save_global_to_static = finfo->global_to_static;
   finfo->global_to_static = TRUE;
   rtnval = _bfd_coff_write_global_sym (h, data);
   finfo->global_to_static = save_global_to_static;
   break;
 default:
   break;
 }
    }
  return (rtnval);
}
