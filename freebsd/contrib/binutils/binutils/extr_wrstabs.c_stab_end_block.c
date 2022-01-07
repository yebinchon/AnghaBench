
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {scalar_t__ last_text_address; scalar_t__ pending_lbrac; scalar_t__ nesting; scalar_t__ fnaddr; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int N_LBRAC ;
 int N_RBRAC ;
 int TRUE ;
 int assert (int) ;
 int stab_write_symbol (struct stab_write_handle*,int ,int ,scalar_t__,char const*) ;

__attribute__((used)) static bfd_boolean
stab_end_block (void *p, bfd_vma addr)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;

  if (addr > info->last_text_address)
    info->last_text_address = addr;


  if (info->pending_lbrac != (bfd_vma) -1)
    {
      if (! stab_write_symbol (info, N_LBRAC, 0, info->pending_lbrac,
          (const char *) ((void*)0)))
 return FALSE;
      info->pending_lbrac = (bfd_vma) -1;
    }

  assert (info->nesting > 0);

  --info->nesting;


  if (info->nesting == 0)
    return TRUE;

  return stab_write_symbol (info, N_RBRAC, 0, addr - info->fnaddr,
       (const char *) ((void*)0));
}
