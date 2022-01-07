
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int block_depth; int vars; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ieee_bb_record_enum ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_output_pending_parms (struct ieee_handle*) ;
 int ieee_start_range (struct ieee_handle*,int ) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,int ) ;

__attribute__((used)) static bfd_boolean
ieee_start_block (void *p, bfd_vma addr)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  if (! ieee_change_buffer (info, &info->vars))
    return FALSE;

  if (info->block_depth == 1)
    {
      if (! ieee_write_number (info, addr)
   || ! ieee_output_pending_parms (info))
 return FALSE;
    }
  else
    {
      if (! ieee_write_byte (info, (int) ieee_bb_record_enum)
   || ! ieee_write_byte (info, 6)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_id (info, "")
   || ! ieee_write_number (info, 0)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_number (info, addr))
 return FALSE;
    }

  if (! ieee_start_range (info, addr))
    return FALSE;

  ++info->block_depth;

  return TRUE;
}
