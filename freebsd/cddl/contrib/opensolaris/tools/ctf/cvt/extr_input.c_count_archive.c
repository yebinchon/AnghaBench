
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ar_name; } ;
typedef int Elf_Cmd ;
typedef TYPE_1__ Elf_Arhdr ;
typedef int Elf ;


 int ELF_C_READ ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 TYPE_1__* elf_getarhdr (int *) ;
 int elf_next (int *) ;
 int warning (char*,char*) ;

__attribute__((used)) static int
count_archive(int fd, Elf *elf, char *file)
{
 Elf *melf;
 Elf_Cmd cmd = ELF_C_READ;
 Elf_Arhdr *arh;
 int nfiles = 0, err = 0;

 while ((melf = elf_begin(fd, cmd, elf)) != ((void*)0)) {
  if ((arh = elf_getarhdr(melf)) == ((void*)0)) {
   warning("Can't process input archive %s\n",
       file);
   err++;
  }

  if (*arh->ar_name != '/')
   nfiles++;

  cmd = elf_next(melf);
  (void) elf_end(melf);
 }

 if (err > 0)
  return (-1);

 return (nfiles);
}
