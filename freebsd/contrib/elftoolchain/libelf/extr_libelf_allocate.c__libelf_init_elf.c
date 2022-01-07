
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int e_scn; } ;
struct TYPE_6__ {TYPE_1__ e_elf; } ;
struct TYPE_7__ {scalar_t__ e_kind; TYPE_2__ e_u; } ;
typedef int Elf_Kind ;
typedef TYPE_3__ Elf ;



 scalar_t__ ELF_K_NONE ;
 int RB_INIT (int *) ;
 int assert (int) ;

void
_libelf_init_elf(Elf *e, Elf_Kind kind)
{
 assert(e != ((void*)0));
 assert(e->e_kind == ELF_K_NONE);

 e->e_kind = kind;

 switch (kind) {
 case 128:
  RB_INIT(&e->e_u.e_elf.e_scn);
  break;
 default:
  break;
 }
}
