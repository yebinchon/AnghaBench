
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct _Libelf_Data {TYPE_4__* d_scn; } ;
struct TYPE_15__ {int e_class; int e_version; } ;
struct TYPE_14__ {scalar_t__ d_type; size_t d_size; scalar_t__ d_buf; } ;
struct TYPE_11__ {int sh_type; } ;
struct TYPE_10__ {int sh_type; } ;
struct TYPE_12__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_13__ {TYPE_3__ s_shdr; TYPE_6__* s_elf; } ;
typedef int GElf_Sym ;
typedef TYPE_4__ Elf_Scn ;
typedef TYPE_5__ Elf_Data ;
typedef int Elf32_Word ;
typedef TYPE_6__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_T_WORD ;
 int LIBELF_SET_ERROR (int ,int ) ;
 size_t _libelf_msize (scalar_t__,int,int ) ;
 scalar_t__ _libelf_xlate_shtype (int ) ;
 int assert (int) ;
 scalar_t__ gelf_getsym (TYPE_5__*,int,int *) ;

GElf_Sym *
gelf_getsymshndx(Elf_Data *d, Elf_Data *id, int ndx, GElf_Sym *dst,
    Elf32_Word *shindex)
{
 int ec;
 Elf *e;
 size_t msz;
 Elf_Scn *scn;
 uint32_t sh_type;
 struct _Libelf_Data *ld, *lid;

 ld = (struct _Libelf_Data *) d;
 lid = (struct _Libelf_Data *) id;

 if (gelf_getsym(d, ndx, dst) == 0)
  return (((void*)0));

 if (lid == ((void*)0) || (scn = lid->d_scn) == ((void*)0) ||
     (e = scn->s_elf) == ((void*)0) || (e != ld->d_scn->s_elf) ||
     shindex == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 ec = e->e_class;
 assert(ec == ELFCLASS32 || ec == ELFCLASS64);

 if (ec == ELFCLASS32)
  sh_type = scn->s_shdr.s_shdr32.sh_type;
 else
  sh_type = scn->s_shdr.s_shdr64.sh_type;

 if (_libelf_xlate_shtype(sh_type) != ELF_T_WORD ||
    id->d_type != ELF_T_WORD) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 msz = _libelf_msize(ELF_T_WORD, ec, e->e_version);

 assert(msz > 0);
 assert(ndx >= 0);

 if (msz * (size_t) ndx >= id->d_size) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 *shindex = ((Elf32_Word *) id->d_buf)[ndx];

 return (dst);
}
