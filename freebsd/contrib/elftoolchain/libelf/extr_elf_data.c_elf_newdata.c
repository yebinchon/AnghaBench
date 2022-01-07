
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {int d_align; int d_version; int d_type; scalar_t__ d_size; scalar_t__ d_off; int * d_buf; } ;
struct _Libelf_Data {TYPE_2__ d_data; } ;
struct TYPE_11__ {scalar_t__ e_kind; scalar_t__ e_rawfile; } ;
struct TYPE_9__ {scalar_t__ s_size; int s_data; TYPE_3__* s_elf; } ;
typedef TYPE_1__ Elf_Scn ;
typedef TYPE_2__ Elf_Data ;
typedef TYPE_3__ Elf ;


 int ARGUMENT ;
 int ELF_C_SET ;
 int ELF_F_DIRTY ;
 scalar_t__ ELF_K_ELF ;
 int ELF_T_BYTE ;
 int LIBELF_PRIVATE (int ) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct _Libelf_Data*,int ) ;
 struct _Libelf_Data* _libelf_allocate_data (TYPE_1__*) ;
 int assert (int) ;
 int d_next ;
 int elf_flagscn (TYPE_1__*,int ,int ) ;
 int * elf_getdata (TYPE_1__*,int *) ;
 int version ;

Elf_Data *
elf_newdata(Elf_Scn *s)
{
 Elf *e;
 struct _Libelf_Data *d;

 if (s == ((void*)0) || (e = s->s_elf) == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 assert(e->e_kind == ELF_K_ELF);





 if (e->e_rawfile && s->s_size > 0 && STAILQ_EMPTY(&s->s_data))
  if (elf_getdata(s, ((void*)0)) == ((void*)0))
   return (((void*)0));

 if ((d = _libelf_allocate_data(s)) == ((void*)0))
  return (((void*)0));

 STAILQ_INSERT_TAIL(&s->s_data, d, d_next);

 d->d_data.d_align = 1;
 d->d_data.d_buf = ((void*)0);
 d->d_data.d_off = (uint64_t) ~0;
 d->d_data.d_size = 0;
 d->d_data.d_type = ELF_T_BYTE;
 d->d_data.d_version = LIBELF_PRIVATE(version);

 (void) elf_flagscn(s, ELF_C_SET, ELF_F_DIRTY);

 return (&d->d_data);
}
