
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t s_ndx; } ;
typedef TYPE_1__ Elf_Scn ;


 int ARGUMENT ;
 int LIBELF_SET_ERROR (int ,int ) ;
 size_t SHN_UNDEF ;

size_t
elf_ndxscn(Elf_Scn *s)
{
 if (s == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (SHN_UNDEF);
 }
 return (s->s_ndx);
}
