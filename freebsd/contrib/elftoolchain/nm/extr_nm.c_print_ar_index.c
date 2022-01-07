
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_6__ {char* ar_name; char* ar_rawname; } ;
struct TYPE_5__ {scalar_t__ as_off; char* as_name; } ;
typedef int Elf_Cmd ;
typedef TYPE_1__ Elf_Arsym ;
typedef TYPE_2__ Elf_Arhdr ;
typedef int Elf ;


 int ELF_C_READ ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 TYPE_2__* elf_getarhdr (int *) ;
 TYPE_1__* elf_getarsym (int *,size_t*) ;
 scalar_t__ elf_rand (int *,scalar_t__) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_ar_index(int fd, Elf *arf)
{
 Elf *elf;
 Elf_Arhdr *arhdr;
 Elf_Arsym *arsym;
 Elf_Cmd cmd;
 off_t start;
 size_t arsym_size;

 if (arf == ((void*)0))
  return;

 if ((arsym = elf_getarsym(arf, &arsym_size)) == ((void*)0))
  return;

 printf("\nArchive index:\n");

 start = arsym->as_off;
 cmd = ELF_C_READ;
 while (arsym_size > 1) {
  if (elf_rand(arf, arsym->as_off) == arsym->as_off &&
      (elf = elf_begin(fd, cmd, arf)) != ((void*)0)) {
   if ((arhdr = elf_getarhdr(elf)) != ((void*)0))
    printf("%s in %s\n", arsym->as_name,
        arhdr->ar_name != ((void*)0) ?
        arhdr->ar_name : arhdr->ar_rawname);
   elf_end(elf);
  }
  ++arsym;
  --arsym_size;
 }

 elf_rand(arf, start);
}
