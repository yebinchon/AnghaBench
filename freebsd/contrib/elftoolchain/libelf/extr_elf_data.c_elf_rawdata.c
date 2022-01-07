
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_17__ {int d_version; int d_type; scalar_t__ d_size; scalar_t__ d_align; scalar_t__ d_off; int * d_buf; } ;
struct _Libelf_Data {TYPE_5__ d_data; } ;
struct TYPE_18__ {scalar_t__ e_kind; int e_class; scalar_t__ e_rawsize; int e_version; int * e_rawfile; } ;
struct TYPE_14__ {scalar_t__ sh_type; scalar_t__ sh_offset; scalar_t__ sh_size; scalar_t__ sh_addralign; } ;
struct TYPE_13__ {scalar_t__ sh_type; scalar_t__ sh_addralign; scalar_t__ sh_size; scalar_t__ sh_offset; } ;
struct TYPE_15__ {TYPE_2__ s_shdr64; TYPE_1__ s_shdr32; } ;
struct TYPE_16__ {int s_rawdata; TYPE_3__ s_shdr; TYPE_6__* s_elf; } ;
struct TYPE_12__ {TYPE_5__ d_data; } ;
typedef TYPE_4__ Elf_Scn ;
typedef TYPE_5__ Elf_Data ;
typedef TYPE_6__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_K_ELF ;
 int ELF_T_BYTE ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int SECTION ;
 scalar_t__ SHT_NOBITS ;
 scalar_t__ SHT_NULL ;
 struct _Libelf_Data* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct _Libelf_Data*,int ) ;
 TYPE_11__* STAILQ_NEXT (struct _Libelf_Data*,int ) ;
 struct _Libelf_Data* _libelf_allocate_data (TYPE_4__*) ;
 int assert (int) ;
 int d_next ;

Elf_Data *
elf_rawdata(Elf_Scn *s, Elf_Data *ed)
{
 Elf *e;
 int elf_class;
 uint32_t sh_type;
 struct _Libelf_Data *d;
 uint64_t sh_align, sh_offset, sh_size;

 if (s == ((void*)0) || (e = s->s_elf) == ((void*)0) || e->e_rawfile == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 assert(e->e_kind == ELF_K_ELF);

 d = (struct _Libelf_Data *) ed;

 if (d == ((void*)0) && (d = STAILQ_FIRST(&s->s_rawdata)) != ((void*)0))
  return (&d->d_data);

 if (d != ((void*)0))
  return (&STAILQ_NEXT(d, d_next)->d_data);

 elf_class = e->e_class;

 assert(elf_class == ELFCLASS32 || elf_class == ELFCLASS64);

 if (elf_class == ELFCLASS32) {
  sh_type = s->s_shdr.s_shdr32.sh_type;
  sh_offset = (uint64_t) s->s_shdr.s_shdr32.sh_offset;
  sh_size = (uint64_t) s->s_shdr.s_shdr32.sh_size;
  sh_align = (uint64_t) s->s_shdr.s_shdr32.sh_addralign;
 } else {
  sh_type = s->s_shdr.s_shdr64.sh_type;
  sh_offset = s->s_shdr.s_shdr64.sh_offset;
  sh_size = s->s_shdr.s_shdr64.sh_size;
  sh_align = s->s_shdr.s_shdr64.sh_addralign;
 }

 if (sh_type == SHT_NULL) {
  LIBELF_SET_ERROR(SECTION, 0);
  return (((void*)0));
 }

 if (sh_type != SHT_NOBITS &&
     (sh_offset > e->e_rawsize || sh_size > e->e_rawsize - sh_offset)) {
  LIBELF_SET_ERROR(SECTION, 0);
  return (((void*)0));
 }

 if ((d = _libelf_allocate_data(s)) == ((void*)0))
  return (((void*)0));

 d->d_data.d_buf = (sh_type == SHT_NOBITS || sh_size == 0) ? ((void*)0) :
     e->e_rawfile + sh_offset;
 d->d_data.d_off = 0;
 d->d_data.d_align = sh_align;
 d->d_data.d_size = sh_size;
 d->d_data.d_type = ELF_T_BYTE;
 d->d_data.d_version = e->e_version;

 STAILQ_INSERT_TAIL(&s->s_rawdata, d, d_next);

 return (&d->d_data);
}
