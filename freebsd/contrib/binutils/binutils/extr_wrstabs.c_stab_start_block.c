
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {int so_offset; int fun_offset; int nesting; scalar_t__ fnaddr; scalar_t__ pending_lbrac; scalar_t__ symbols; int abfd; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int N_LBRAC ;
 int TRUE ;
 int bfd_put_32 (int ,scalar_t__,scalar_t__) ;
 int stab_write_symbol (struct stab_write_handle*,int ,int ,scalar_t__,char const*) ;

__attribute__((used)) static bfd_boolean
stab_start_block (void *p, bfd_vma addr)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;




  if (info->so_offset != -1)
    {
      bfd_put_32 (info->abfd, addr, info->symbols + info->so_offset + 8);
      info->so_offset = -1;
    }

  if (info->fun_offset != -1)
    {
      bfd_put_32 (info->abfd, addr, info->symbols + info->fun_offset + 8);
      info->fun_offset = -1;
    }

  ++info->nesting;





  if (info->nesting == 1)
    {
      info->fnaddr = addr;
      return TRUE;
    }






  if (info->pending_lbrac != (bfd_vma) -1)
    {
      if (! stab_write_symbol (info, N_LBRAC, 0, info->pending_lbrac,
          (const char *) ((void*)0)))
 return FALSE;
    }



  info->pending_lbrac = addr - info->fnaddr;

  return TRUE;
}
