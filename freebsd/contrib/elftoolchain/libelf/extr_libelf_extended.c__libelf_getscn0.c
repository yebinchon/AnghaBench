
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int e_scn; } ;
struct TYPE_7__ {TYPE_1__ e_elf; } ;
struct TYPE_8__ {TYPE_2__ e_u; } ;
typedef int Elf_Scn ;
typedef TYPE_3__ Elf ;


 int * RB_MIN (int ,int *) ;
 scalar_t__ SHN_UNDEF ;
 int * _libelf_allocate_scn (TYPE_3__*,size_t) ;
 int scntree ;

__attribute__((used)) static Elf_Scn *
_libelf_getscn0(Elf *e)
{
 Elf_Scn *s;

 if ((s = RB_MIN(scntree, &e->e_u.e_elf.e_scn)) != ((void*)0))
  return (s);

 return (_libelf_allocate_scn(e, (size_t) SHN_UNDEF));
}
