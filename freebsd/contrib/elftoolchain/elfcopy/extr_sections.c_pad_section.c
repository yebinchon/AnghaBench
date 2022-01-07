
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct section {scalar_t__ pad_sz; scalar_t__ sz; int os; int * pad; } ;
struct elfcopy {int fill; } ;
struct TYPE_7__ {int d_align; scalar_t__ d_off; scalar_t__ d_size; int d_version; int d_type; int * d_buf; } ;
struct TYPE_6__ {scalar_t__ sh_size; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ Elf_Data ;


 int ELF_T_BYTE ;
 int EV_CURRENT ;
 int EXIT_FAILURE ;
 int elf_errmsg (int) ;
 TYPE_2__* elf_newdata (int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int * gelf_getshdr (int ,TYPE_1__*) ;
 int gelf_update_shdr (int ,TYPE_1__*) ;
 int * malloc (scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static void
pad_section(struct elfcopy *ecp, struct section *s)
{
 GElf_Shdr osh;
 Elf_Data *od;

 if (s == ((void*)0) || s->pad_sz == 0)
  return;

 if ((s->pad = malloc(s->pad_sz)) == ((void*)0))
  err(EXIT_FAILURE, "malloc failed");
 memset(s->pad, ecp->fill, s->pad_sz);


 if ((od = elf_newdata(s->os)) == ((void*)0))
  errx(EXIT_FAILURE, "elf_newdata() failed: %s",
      elf_errmsg(-1));
 od->d_align = 1;
 od->d_off = s->sz;
 od->d_buf = s->pad;
 od->d_type = ELF_T_BYTE;
 od->d_size = s->pad_sz;
 od->d_version = EV_CURRENT;


 if (gelf_getshdr(s->os, &osh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getshdr() failed: %s",
      elf_errmsg(-1));
 osh.sh_size = s->sz + s->pad_sz;
 if (!gelf_update_shdr(s->os, &osh))
  errx(EXIT_FAILURE, "elf_update_shdr failed: %s",
      elf_errmsg(-1));
}
