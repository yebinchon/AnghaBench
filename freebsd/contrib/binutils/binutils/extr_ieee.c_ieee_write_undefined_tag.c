
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee_name_type_hash_entry {struct ieee_name_type* types; } ;
struct TYPE_2__ {char* name; char indx; } ;
struct ieee_name_type {int kind; TYPE_1__ type; struct ieee_name_type* next; } ;
struct ieee_handle {unsigned int name_indx; void* error; int global_types; } ;
typedef void* bfd_boolean ;




 int DEBUG_KIND_ILLEGAL ;



 void* FALSE ;
 void* TRUE ;
 int abort () ;
 scalar_t__ ieee_bb_record_enum ;
 scalar_t__ ieee_buffer_emptyp (int *) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 scalar_t__ ieee_nn_record ;
 scalar_t__ ieee_ty_record_enum ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,char) ;

__attribute__((used)) static bfd_boolean
ieee_write_undefined_tag (struct ieee_name_type_hash_entry *h, void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_name_type *nt;

  for (nt = h->types; nt != ((void*)0); nt = nt->next)
    {
      unsigned int name_indx;
      char code;

      if (nt->kind == DEBUG_KIND_ILLEGAL)
 continue;

      if (ieee_buffer_emptyp (&info->global_types))
 {
   if (! ieee_change_buffer (info, &info->global_types)
       || ! ieee_write_byte (info, (int) ieee_bb_record_enum)
       || ! ieee_write_byte (info, 2)
       || ! ieee_write_number (info, 0)
       || ! ieee_write_id (info, ""))
     {
       info->error = TRUE;
       return FALSE;
     }
 }
      else
 {
   if (! ieee_change_buffer (info, &info->global_types))
     {
       info->error = TRUE;
       return FALSE;
     }
 }

      name_indx = info->name_indx;
      ++info->name_indx;
      if (! ieee_write_byte (info, (int) ieee_nn_record)
   || ! ieee_write_number (info, name_indx)
   || ! ieee_write_id (info, nt->type.name)
   || ! ieee_write_byte (info, (int) ieee_ty_record_enum)
   || ! ieee_write_number (info, nt->type.indx)
   || ! ieee_write_byte (info, 0xce)
   || ! ieee_write_number (info, name_indx))
 {
   info->error = TRUE;
   return FALSE;
 }

      switch (nt->kind)
 {
 default:
   abort ();
   info->error = TRUE;
   return FALSE;
 case 130:
 case 132:
   code = 'S';
   break;
 case 129:
 case 128:
   code = 'U';
   break;
 case 131:
   code = 'E';
   break;
 }
      if (! ieee_write_number (info, code)
   || ! ieee_write_number (info, 0))
 {
   info->error = TRUE;
   return FALSE;
 }
    }

  return TRUE;
}
