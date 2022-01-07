
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_21__ {size_t d_size; scalar_t__ d_buf; } ;
struct _Libelf_Data {TYPE_6__ d_data; TYPE_8__* d_scn; } ;
struct TYPE_17__ {int sh_type; } ;
struct TYPE_16__ {int sh_type; } ;
struct TYPE_18__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_23__ {TYPE_3__ s_shdr; TYPE_11__* s_elf; } ;
struct TYPE_19__ {scalar_t__ c_val; } ;
struct TYPE_22__ {TYPE_4__ c_un; int c_tag; } ;
struct TYPE_20__ {scalar_t__ c_val; } ;
struct TYPE_15__ {int e_class; int e_version; } ;
struct TYPE_14__ {TYPE_5__ c_un; int c_tag; } ;
typedef TYPE_7__ GElf_Cap ;
typedef TYPE_8__ Elf_Scn ;
typedef int Elf_Data ;
typedef scalar_t__ Elf64_Xword ;
typedef TYPE_7__ Elf64_Cap ;
typedef TYPE_10__ Elf32_Cap ;
typedef TYPE_11__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_T_CAP ;
 int LIBELF_SET_ERROR (int ,int ) ;
 size_t _libelf_msize (scalar_t__,int,int ) ;
 scalar_t__ _libelf_xlate_shtype (int ) ;
 int assert (int) ;

GElf_Cap *
gelf_getcap(Elf_Data *ed, int ndx, GElf_Cap *dst)
{
 int ec;
 Elf *e;
 size_t msz;
 Elf_Scn *scn;
 Elf32_Cap *cap32;
 Elf64_Cap *cap64;
 uint32_t sh_type;
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

 if (_libelf_xlate_shtype(sh_type) != ELF_T_CAP) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 msz = _libelf_msize(ELF_T_CAP, ec, e->e_version);

 assert(msz > 0);

 if (msz * (size_t) ndx >= d->d_data.d_size) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if (ec == ELFCLASS32) {

  cap32 = (Elf32_Cap *) d->d_data.d_buf + ndx;

  dst->c_tag = cap32->c_tag;
  dst->c_un.c_val = (Elf64_Xword) cap32->c_un.c_val;

 } else {

  cap64 = (Elf64_Cap *) d->d_data.d_buf + ndx;

  *dst = *cap64;
 }

 return (dst);
}
