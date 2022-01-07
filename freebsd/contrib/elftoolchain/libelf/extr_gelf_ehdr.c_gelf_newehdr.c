
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 int LIBELF_SET_ERROR (int ,int ) ;
 void* _libelf_ehdr (int *,int,int) ;

void *
gelf_newehdr(Elf *e, int ec)
{
 if (e != ((void*)0) &&
     (ec == ELFCLASS32 || ec == ELFCLASS64))
  return (_libelf_ehdr(e, ec, 1));

 LIBELF_SET_ERROR(ARGUMENT, 0);
 return (((void*)0));
}
