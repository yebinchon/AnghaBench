
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int e_scn; } ;
struct TYPE_10__ {TYPE_1__ e_elf; } ;
struct TYPE_12__ {TYPE_2__ e_u; } ;
struct TYPE_11__ {size_t s_ndx; int s_rawdata; int s_data; TYPE_4__* s_elf; } ;
typedef TYPE_3__ Elf_Scn ;
typedef TYPE_4__ Elf ;


 int LIBELF_SET_ERROR (int ,int ) ;
 int RB_INSERT (int ,int *,TYPE_3__*) ;
 int RESOURCE ;
 int STAILQ_INIT (int *) ;
 TYPE_3__* calloc (size_t,int) ;
 int errno ;
 int scntree ;

Elf_Scn *
_libelf_allocate_scn(Elf *e, size_t ndx)
{
 Elf_Scn *s;

 if ((s = calloc((size_t) 1, sizeof(Elf_Scn))) == ((void*)0)) {
  LIBELF_SET_ERROR(RESOURCE, errno);
  return (((void*)0));
 }

 s->s_elf = e;
 s->s_ndx = ndx;

 STAILQ_INIT(&s->s_data);
 STAILQ_INIT(&s->s_rawdata);

 RB_INSERT(scntree, &e->e_u.e_elf.e_scn, s);

 return (s);
}
