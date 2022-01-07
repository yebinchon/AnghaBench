
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_7__ {int alignment_power; int filepos; int size; } ;
typedef TYPE_1__ asection ;
struct TYPE_9__ {long core_lwpid; } ;
struct TYPE_8__ {int descpos; int descsz; } ;
typedef TYPE_2__ Elf_Internal_Note ;


 int FALSE ;
 int SEC_HAS_CONTENTS ;
 int TRUE ;
 char* bfd_alloc (int *,scalar_t__) ;
 TYPE_1__* bfd_make_section_anyway_with_flags (int *,char*,int ) ;
 TYPE_5__* elf_tdata (int *) ;
 int elfcore_maybe_make_sect (int *,char*,TYPE_1__*) ;
 int sprintf (char*,char*,char*,long) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static bfd_boolean
elfcore_grok_nto_regs (bfd *abfd,
         Elf_Internal_Note *note,
         long tid,
         char *base)
{
  char buf[100];
  char *name;
  asection *sect;


  sprintf (buf, "%s/%ld", base, tid);

  name = bfd_alloc (abfd, strlen (buf) + 1);
  if (name == ((void*)0))
    return FALSE;
  strcpy (name, buf);

  sect = bfd_make_section_anyway_with_flags (abfd, name, SEC_HAS_CONTENTS);
  if (sect == ((void*)0))
    return FALSE;

  sect->size = note->descsz;
  sect->filepos = note->descpos;
  sect->alignment_power = 2;


  if (elf_tdata (abfd)->core_lwpid == tid)
    return elfcore_maybe_make_sect (abfd, base, sect);

  return TRUE;
}
