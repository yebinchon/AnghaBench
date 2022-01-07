
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {scalar_t__ highaddr; int block_depth; int vars; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ieee_be_record_enum ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_end_range (struct ieee_handle*,scalar_t__) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_number (struct ieee_handle*,scalar_t__) ;

__attribute__((used)) static bfd_boolean
ieee_end_block (void *p, bfd_vma addr)
{
  struct ieee_handle *info = (struct ieee_handle *) p;




  if (! ieee_change_buffer (info, &info->vars)
      || ! ieee_write_byte (info, (int) ieee_be_record_enum)
      || ! ieee_write_number (info, addr - 1))
    return FALSE;

  if (! ieee_end_range (info, addr))
    return FALSE;

  --info->block_depth;

  if (addr > info->highaddr)
    info->highaddr = addr;

  return TRUE;
}
