
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct elf_backend_data {int (* elf_backend_grok_psinfo ) (int *,TYPE_2__*) ;int (* elf_backend_grok_prstatus ) (int *,TYPE_2__*) ;} ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_15__ {int alignment_power; int filepos; int size; } ;
typedef TYPE_1__ asection ;
struct TYPE_16__ {int type; int namesz; int descpos; int descsz; int namedata; } ;
typedef TYPE_2__ Elf_Internal_Note ;


 int FALSE ;
 int SEC_HAS_CONTENTS ;
 int TRUE ;
 int bfd_get_arch_size (int *) ;
 TYPE_1__* bfd_make_section_anyway_with_flags (int *,char*,int ) ;
 int elfcore_grok_lwpstatus (int *,TYPE_2__*) ;
 int elfcore_grok_prfpreg (int *,TYPE_2__*) ;
 int elfcore_grok_prstatus (int *,TYPE_2__*) ;
 int elfcore_grok_prxfpreg (int *,TYPE_2__*) ;
 int elfcore_grok_psinfo (int *,TYPE_2__*) ;
 int elfcore_grok_pstatus (int *,TYPE_2__*) ;
 int elfcore_grok_thrmisc (int *,TYPE_2__*) ;
 int elfcore_grok_win32pstatus (int *,TYPE_2__*) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int strcmp (int ,char*) ;
 int stub1 (int *,TYPE_2__*) ;
 int stub2 (int *,TYPE_2__*) ;

__attribute__((used)) static bfd_boolean
elfcore_grok_note (bfd *abfd, Elf_Internal_Note *note)
{
  const struct elf_backend_data *bed = get_elf_backend_data (abfd);

  switch (note->type)
    {
    default:
      return TRUE;

    case 133:
      if (bed->elf_backend_grok_prstatus)
 if ((*bed->elf_backend_grok_prstatus) (abfd, note))
   return TRUE;



      return TRUE;
    case 136:
      return elfcore_grok_prfpreg (abfd, note);






    case 132:
      if (note->namesz == 6
   && strcmp (note->namedata, "LINUX") == 0)
 return elfcore_grok_prxfpreg (abfd, note);
      else
 return TRUE;

    case 134:
    case 131:
      if (bed->elf_backend_grok_psinfo)
 if ((*bed->elf_backend_grok_psinfo) (abfd, note))
   return TRUE;



      return TRUE;


    case 137:
      {
 asection *sect = bfd_make_section_anyway_with_flags (abfd, ".auxv",
            SEC_HAS_CONTENTS);

 if (sect == ((void*)0))
   return FALSE;
 sect->size = note->descsz;
 sect->filepos = note->descpos;
 sect->alignment_power = 1 + bfd_get_arch_size (abfd) / 32;

 return TRUE;
      }






    }
}
