
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ namesz; char* namedata; int descsz; int type; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 scalar_t__ const_strneq (char*,char*) ;
 char* get_freebsd_note_type (int ) ;
 char* get_gnu_note_type (int ) ;
 char* get_netbsd_elfcore_note_type (int ) ;
 char* get_note_type (int ) ;
 int printf (char*,char*,int ,char const*) ;

__attribute__((used)) static int
process_note (Elf_Internal_Note *pnote)
{
  const char *nt;

  if (pnote->namesz == 0)


    nt = get_note_type (pnote->type);

  else if (const_strneq (pnote->namedata, "FreeBSD"))

    nt = get_freebsd_note_type (pnote->type);

  else if (const_strneq (pnote->namedata, "GNU"))

    nt = get_gnu_note_type (pnote->type);

  else if (const_strneq (pnote->namedata, "NetBSD-CORE"))

    nt = get_netbsd_elfcore_note_type (pnote->type);

  else


      nt = get_note_type (pnote->type);

  printf ("  %-13s 0x%08lx\t%s\n",
   pnote->namesz ? pnote->namedata : "(NONE)",
   pnote->descsz, nt);
  return 1;
}
