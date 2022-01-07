
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t e_nscn; int e_scn; } ;
struct TYPE_9__ {TYPE_1__ e_elf; } ;
struct TYPE_10__ {scalar_t__ e_kind; int e_class; scalar_t__ e_cmd; int e_flags; TYPE_2__ e_u; } ;
typedef int Elf_Scn ;
typedef TYPE_3__ Elf ;


 int ARGUMENT ;
 int CLASS ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 int ELF_C_SET ;
 scalar_t__ ELF_C_WRITE ;
 int ELF_F_DIRTY ;
 scalar_t__ ELF_K_ELF ;
 int LIBELF_F_SHDRS_LOADED ;
 int LIBELF_SET_ERROR (int ,int ) ;
 scalar_t__ RB_EMPTY (int *) ;
 scalar_t__ SHN_UNDEF ;
 int * _libelf_allocate_scn (TYPE_3__*,size_t) ;
 void* _libelf_ehdr (TYPE_3__*,int,int ) ;
 scalar_t__ _libelf_load_section_headers (TYPE_3__*,void*) ;
 int assert (int) ;
 int elf_flagscn (int *,int ,int ) ;

Elf_Scn *
elf_newscn(Elf *e)
{
 int ec;
 void *ehdr;
 Elf_Scn *scn;

 if (e == ((void*)0) || e->e_kind != ELF_K_ELF) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64) {
  LIBELF_SET_ERROR(CLASS, 0);
  return (((void*)0));
 }

 if ((ehdr = _libelf_ehdr(e, ec, 0)) == ((void*)0))
  return (((void*)0));
 if (e->e_cmd != ELF_C_WRITE &&
     (e->e_flags & LIBELF_F_SHDRS_LOADED) == 0 &&
     _libelf_load_section_headers(e, ehdr) == 0)
  return (((void*)0));

 if (RB_EMPTY(&e->e_u.e_elf.e_scn)) {
  assert(e->e_u.e_elf.e_nscn == 0);
  if ((scn = _libelf_allocate_scn(e, (size_t) SHN_UNDEF)) ==
      ((void*)0))
   return (((void*)0));
  e->e_u.e_elf.e_nscn++;
 }

 assert(e->e_u.e_elf.e_nscn > 0);

 if ((scn = _libelf_allocate_scn(e, e->e_u.e_elf.e_nscn)) == ((void*)0))
  return (((void*)0));

 e->e_u.e_elf.e_nscn++;

 (void) elf_flagscn(scn, ELF_C_SET, ELF_F_DIRTY);

 return (scn);
}
