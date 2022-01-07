
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {size_t d_size; scalar_t__ d_buf; } ;
struct _Libelf_Data {TYPE_4__ d_data; TYPE_5__* d_scn; } ;
struct TYPE_14__ {int d_val; } ;
struct TYPE_13__ {int e_class; int e_version; } ;
struct TYPE_9__ {int sh_type; } ;
struct TYPE_8__ {int sh_type; } ;
struct TYPE_10__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_12__ {TYPE_3__ s_shdr; TYPE_6__* s_elf; } ;
typedef int GElf_Dyn ;
typedef TYPE_5__ Elf_Scn ;
typedef int Elf_Data ;
typedef int Elf64_Dyn ;
typedef int Elf32_Dyn ;
typedef TYPE_6__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_T_DYN ;
 int LIBELF_COPY_S32 (int *,int *,int ) ;
 int LIBELF_COPY_U32 (int *,int *,int ) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 size_t _libelf_msize (scalar_t__,int,int ) ;
 scalar_t__ _libelf_xlate_shtype (int ) ;
 int assert (int) ;
 int d_tag ;
 TYPE_7__ d_un ;

int
gelf_update_dyn(Elf_Data *ed, int ndx, GElf_Dyn *ds)
{
 int ec;
 Elf *e;
 size_t msz;
 Elf_Scn *scn;
 Elf32_Dyn *dyn32;
 Elf64_Dyn *dyn64;
 uint32_t sh_type;
 struct _Libelf_Data *d;

 d = (struct _Libelf_Data *) ed;

 if (d == ((void*)0) || ndx < 0 || ds == ((void*)0) ||
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

 if (_libelf_xlate_shtype(sh_type) != ELF_T_DYN) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 msz = _libelf_msize(ELF_T_DYN, ec, e->e_version);

 assert(msz > 0);
 assert(ndx >= 0);

 if (msz * (size_t) ndx >= d->d_data.d_size) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 if (ec == ELFCLASS32) {
  dyn32 = (Elf32_Dyn *) d->d_data.d_buf + ndx;

  LIBELF_COPY_S32(dyn32, ds, d_tag);
  LIBELF_COPY_U32(dyn32, ds, d_un.d_val);
 } else {
  dyn64 = (Elf64_Dyn *) d->d_data.d_buf + ndx;

  *dyn64 = *ds;
 }

 return (1);
}
