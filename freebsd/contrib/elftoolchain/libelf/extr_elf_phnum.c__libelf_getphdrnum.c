
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t e_nphdr; } ;
struct TYPE_6__ {TYPE_2__ e_elf; } ;
struct TYPE_8__ {scalar_t__ e_kind; int e_class; TYPE_1__ e_u; } ;
typedef TYPE_3__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_K_ELF ;
 int LIBELF_SET_ERROR (int ,int ) ;
 void* _libelf_ehdr (TYPE_3__*,int,int ) ;

__attribute__((used)) static int
_libelf_getphdrnum(Elf *e, size_t *phnum)
{
 void *eh;
 int ec;

 if (e == ((void*)0) || e->e_kind != ELF_K_ELF ||
     ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (-1);
 }

 if ((eh = _libelf_ehdr(e, ec, 0)) == ((void*)0))
  return (-1);

 *phnum = e->e_u.e_elf.e_nphdr;

 return (0);
}
