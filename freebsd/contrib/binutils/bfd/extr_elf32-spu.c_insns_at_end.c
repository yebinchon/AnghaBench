
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function_info {int hi; int sec; } ;
typedef void* bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ is_nop (int ,void*) ;

__attribute__((used)) static bfd_boolean
insns_at_end (struct function_info *fun, bfd_vma limit)
{
  bfd_vma off = (fun->hi + 3) & -4;

  while (off < limit && is_nop (fun->sec, off))
    off += 4;
  if (off < limit)
    {
      fun->hi = off;
      return TRUE;
    }
  fun->hi = limit;
  return FALSE;
}
