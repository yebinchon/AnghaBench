
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_buflist {int dummy; } ;
struct ieee_handle {char* modname; TYPE_2__* type_stack; struct ieee_buflist types; struct ieee_buflist global_types; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {struct ieee_buflist strdef; int localp; scalar_t__ ignorep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;


 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int ieee_append_buffer (struct ieee_handle*,struct ieee_buflist*,struct ieee_buflist*) ;
 scalar_t__ ieee_bb_record_enum ;
 scalar_t__ ieee_buffer_emptyp (struct ieee_buflist*) ;
 int ieee_change_buffer (struct ieee_handle*,struct ieee_buflist*) ;
 int ieee_init_buffer (struct ieee_handle*,struct ieee_buflist*) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,int ) ;

__attribute__((used)) static bfd_boolean
ieee_end_struct_type (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_buflist *pb;

  assert (info->type_stack != ((void*)0)
   && ! ieee_buffer_emptyp (&info->type_stack->type.strdef));




  if (info->type_stack->type.ignorep)
    return TRUE;





  if (! info->type_stack->type.localp)
    {

      if (ieee_buffer_emptyp (&info->global_types))
 {
   if (! ieee_change_buffer (info, &info->global_types)
       || ! ieee_write_byte (info, (int) ieee_bb_record_enum)
       || ! ieee_write_byte (info, 2)
       || ! ieee_write_number (info, 0)
       || ! ieee_write_id (info, ""))
     return FALSE;
 }
      pb = &info->global_types;
    }
  else
    {

      if (ieee_buffer_emptyp (&info->types))
 {
   if (! ieee_change_buffer (info, &info->types)
       || ! ieee_write_byte (info, (int) ieee_bb_record_enum)
       || ! ieee_write_byte (info, 1)
       || ! ieee_write_number (info, 0)
       || ! ieee_write_id (info, info->modname))
     return FALSE;
 }
      pb = &info->types;
    }


  if (! ieee_append_buffer (info, pb, &info->type_stack->type.strdef)
      || ! ieee_init_buffer (info, &info->type_stack->type.strdef))
    return FALSE;



  return TRUE;
}
