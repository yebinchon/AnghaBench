
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int block_depth; scalar_t__ fnargcount; int fnargs; int fntype; int * fnname; int types; int modname; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int ieee_append_buffer (struct ieee_handle*,int *,int *) ;
 scalar_t__ ieee_bb_record_enum ;
 scalar_t__ ieee_buffer_emptyp (int *) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_init_buffer (struct ieee_handle*,int *) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,int ) ;
 int ieee_write_number (struct ieee_handle*,scalar_t__) ;

__attribute__((used)) static bfd_boolean
ieee_end_function (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  assert (info->block_depth == 1);

  --info->block_depth;







  if (! ieee_change_buffer (info, &info->fntype)
      || ! ieee_write_number (info, info->fnargcount)
      || ! ieee_change_buffer (info, &info->fnargs)
      || ! ieee_write_number (info, 0))
    return FALSE;


  if (ieee_buffer_emptyp (&info->types))
    {
      if (! ieee_change_buffer (info, &info->types)
   || ! ieee_write_byte (info, (int) ieee_bb_record_enum)
   || ! ieee_write_byte (info, 1)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_id (info, info->modname))
 return FALSE;
    }

  if (! ieee_append_buffer (info, &info->types, &info->fntype)
      || ! ieee_append_buffer (info, &info->types, &info->fnargs))
    return FALSE;

  info->fnname = ((void*)0);
  if (! ieee_init_buffer (info, &info->fntype)
      || ! ieee_init_buffer (info, &info->fnargs))
    return FALSE;
  info->fnargcount = 0;

  return TRUE;
}
