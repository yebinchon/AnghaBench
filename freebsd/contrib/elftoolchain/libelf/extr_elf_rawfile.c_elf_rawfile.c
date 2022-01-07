
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t e_rawsize; unsigned char* e_rawfile; scalar_t__ e_cmd; } ;
typedef TYPE_1__ Elf ;


 int ARGUMENT ;
 scalar_t__ ELF_C_WRITE ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int SEQUENCE ;

char *
elf_rawfile(Elf *e, size_t *sz)
{
 size_t size;
 unsigned char *ptr;

 size = e ? e->e_rawsize : 0;
 ptr = ((void*)0);

 if (e == ((void*)0))
  LIBELF_SET_ERROR(ARGUMENT, 0);
 else if ((ptr = e->e_rawfile) == ((void*)0) && e->e_cmd == ELF_C_WRITE)
  LIBELF_SET_ERROR(SEQUENCE, 0);

 if (sz)
  *sz = size;

 return ((char *) ptr);
}
