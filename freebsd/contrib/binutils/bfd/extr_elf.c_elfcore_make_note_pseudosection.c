
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_3__ {int descpos; int descsz; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int _bfd_elfcore_make_pseudosection (int *,char*,int ,int ) ;

__attribute__((used)) static bfd_boolean
elfcore_make_note_pseudosection (bfd *abfd,
     char *name,
     Elf_Internal_Note *note)
{
  return _bfd_elfcore_make_pseudosection (abfd, name,
       note->descsz, note->descpos);
}
