
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_6__ {int type; } ;
typedef TYPE_1__ Elf_Internal_Note ;






 int TRUE ;
 int elfcore_grok_nto_regs (int *,TYPE_1__*,long,char*) ;
 int elfcore_grok_nto_status (int *,TYPE_1__*,long*) ;
 int elfcore_make_note_pseudosection (int *,char*,TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
elfcore_grok_nto_note (bfd *abfd, Elf_Internal_Note *note)
{



  static long tid = 1;

  switch (note->type)
    {
    case 129:
      return elfcore_make_note_pseudosection (abfd, ".qnx_core_info", note);
    case 128:
      return elfcore_grok_nto_status (abfd, note, &tid);
    case 130:
      return elfcore_grok_nto_regs (abfd, note, tid, ".reg");
    case 131:
      return elfcore_grok_nto_regs (abfd, note, tid, ".reg2");
    default:
      return TRUE;
    }
}
