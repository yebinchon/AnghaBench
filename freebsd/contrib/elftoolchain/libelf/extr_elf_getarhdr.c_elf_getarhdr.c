
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * e_arhdr; } ;
struct TYPE_6__ {int e_flags; TYPE_1__ e_hdr; } ;
typedef int Elf_Arhdr ;
typedef TYPE_2__ Elf ;


 int ARGUMENT ;
 int LIBELF_F_AR_HEADER ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int * _libelf_ar_gethdr (TYPE_2__*) ;

Elf_Arhdr *
elf_getarhdr(Elf *e)
{
 if (e == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if (e->e_flags & LIBELF_F_AR_HEADER)
  return (e->e_hdr.e_arhdr);

 return (_libelf_ar_gethdr(e));
}
