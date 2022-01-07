
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e_class; } ;
typedef TYPE_1__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 int LIBELF_SET_ERROR (int ,int ) ;
 long _libelf_checksum (TYPE_1__*,int) ;

long
gelf_checksum(Elf *e)
{
 int ec;
 if (e == ((void*)0) ||
     ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0L);
 }
 return (_libelf_checksum(e, ec));
}
