
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_16__ {size_t d_size; scalar_t__ d_buf; } ;
struct _Libelf_Data {TYPE_4__ d_data; TYPE_6__* d_scn; } ;
struct TYPE_20__ {int e_class; int e_version; } ;
struct TYPE_19__ {scalar_t__ r_addend; int r_info; scalar_t__ r_offset; } ;
struct TYPE_14__ {int sh_type; } ;
struct TYPE_13__ {int sh_type; } ;
struct TYPE_15__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_18__ {TYPE_3__ s_shdr; TYPE_9__* s_elf; } ;
struct TYPE_17__ {int r_info; scalar_t__ r_addend; scalar_t__ r_offset; } ;
typedef TYPE_5__ GElf_Rela ;
typedef TYPE_6__ Elf_Scn ;
typedef int Elf_Data ;
typedef int Elf64_Xword ;
typedef scalar_t__ Elf64_Sxword ;
typedef TYPE_5__ Elf64_Rela ;
typedef scalar_t__ Elf64_Addr ;
typedef TYPE_8__ Elf32_Rela ;
typedef TYPE_9__ Elf ;


 int ARGUMENT ;
 scalar_t__ ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int ELF64_R_INFO (int ,int ) ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_T_RELA ;
 int LIBELF_SET_ERROR (int ,int ) ;
 scalar_t__ _libelf_is_mips64el (TYPE_9__*) ;
 int _libelf_mips64el_r_info_tom (int ) ;
 size_t _libelf_msize (scalar_t__,int,int ) ;
 scalar_t__ _libelf_xlate_shtype (int ) ;
 int assert (int) ;

GElf_Rela *
gelf_getrela(Elf_Data *ed, int ndx, GElf_Rela *dst)
{
 int ec;
 Elf *e;
 size_t msz;
 Elf_Scn *scn;
 uint32_t sh_type;
 Elf32_Rela *rela32;
 Elf64_Rela *rela64;
 struct _Libelf_Data *d;

 d = (struct _Libelf_Data *) ed;

 if (d == ((void*)0) || ndx < 0 || dst == ((void*)0) ||
     (scn = d->d_scn) == ((void*)0) ||
     (e = scn->s_elf) == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 ec = e->e_class;
 assert(ec == ELFCLASS32 || ec == ELFCLASS64);

 if (ec == ELFCLASS32)
  sh_type = scn->s_shdr.s_shdr32.sh_type;
 else
  sh_type = scn->s_shdr.s_shdr64.sh_type;

 if (_libelf_xlate_shtype(sh_type) != ELF_T_RELA) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 msz = _libelf_msize(ELF_T_RELA, ec, e->e_version);

 assert(msz > 0);
 assert(ndx >= 0);

 if (msz * (size_t) ndx >= d->d_data.d_size) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if (ec == ELFCLASS32) {
  rela32 = (Elf32_Rela *) d->d_data.d_buf + ndx;

  dst->r_offset = (Elf64_Addr) rela32->r_offset;
  dst->r_info = ELF64_R_INFO(
      (Elf64_Xword) ELF32_R_SYM(rela32->r_info),
      ELF32_R_TYPE(rela32->r_info));
  dst->r_addend = (Elf64_Sxword) rela32->r_addend;

 } else {

  rela64 = (Elf64_Rela *) d->d_data.d_buf + ndx;

  *dst = *rela64;

  if (_libelf_is_mips64el(e))
   dst->r_info =
       _libelf_mips64el_r_info_tom(rela64->r_info);
 }

 return (dst);
}
