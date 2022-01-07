
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {size_t d_size; scalar_t__ d_buf; } ;
struct _Libelf_Data {TYPE_4__ d_data; TYPE_6__* d_scn; } ;
struct TYPE_18__ {int e_class; int e_version; } ;
struct TYPE_17__ {int si_flags; int si_boundto; } ;
struct TYPE_12__ {int sh_type; } ;
struct TYPE_11__ {int sh_type; } ;
struct TYPE_13__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_16__ {TYPE_3__ s_shdr; TYPE_9__* s_elf; } ;
struct TYPE_15__ {int si_flags; int si_boundto; } ;
typedef TYPE_5__ GElf_Syminfo ;
typedef TYPE_6__ Elf_Scn ;
typedef int Elf_Data ;
typedef TYPE_5__ Elf64_Syminfo ;
typedef TYPE_8__ Elf32_Syminfo ;
typedef TYPE_9__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_T_SYMINFO ;
 int LIBELF_SET_ERROR (int ,int ) ;
 size_t _libelf_msize (scalar_t__,int,int ) ;
 scalar_t__ _libelf_xlate_shtype (int ) ;
 int assert (int) ;

int
gelf_update_syminfo(Elf_Data *ed, int ndx, GElf_Syminfo *gs)
{
 int ec;
 Elf *e;
 size_t msz;
 Elf_Scn *scn;
 uint32_t sh_type;
 struct _Libelf_Data *d;
 Elf32_Syminfo *syminfo32;
 Elf64_Syminfo *syminfo64;

 d = (struct _Libelf_Data *) ed;

 if (d == ((void*)0) || ndx < 0 || gs == ((void*)0) ||
     (scn = d->d_scn) == ((void*)0) ||
     (e = scn->s_elf) == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 ec = e->e_class;
 assert(ec == ELFCLASS32 || ec == ELFCLASS64);

 if (ec == ELFCLASS32)
  sh_type = scn->s_shdr.s_shdr32.sh_type;
 else
  sh_type = scn->s_shdr.s_shdr64.sh_type;

 if (_libelf_xlate_shtype(sh_type) != ELF_T_SYMINFO) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 msz = _libelf_msize(ELF_T_SYMINFO, ec, e->e_version);

 assert(msz > 0);
 assert(ndx >= 0);

 if (msz * (size_t) ndx >= d->d_data.d_size) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 if (ec == ELFCLASS32) {
  syminfo32 = (Elf32_Syminfo *) d->d_data.d_buf + ndx;

  syminfo32->si_boundto = gs->si_boundto;
  syminfo32->si_flags = gs->si_flags;

 } else {
  syminfo64 = (Elf64_Syminfo *) d->d_data.d_buf + ndx;

  *syminfo64 = *gs;
 }

 return (1);
}
