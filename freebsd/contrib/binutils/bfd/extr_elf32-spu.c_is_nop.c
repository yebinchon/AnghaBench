
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_4__ {scalar_t__ size; int owner; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int TRUE ;
 int bfd_get_section_contents (int ,TYPE_1__*,unsigned char*,int ,int) ;

__attribute__((used)) static bfd_boolean
is_nop (asection *sec, bfd_vma off)
{
  unsigned char insn[4];

  if (off + 4 > sec->size
      || !bfd_get_section_contents (sec->owner, sec, insn, off, 4))
    return FALSE;
  if ((insn[0] & 0xbf) == 0 && (insn[1] & 0xe0) == 0x20)
    return TRUE;
  if (insn[0] == 0 && insn[1] == 0 && insn[2] == 0 && insn[3] == 0)
    return TRUE;
  return FALSE;
}
