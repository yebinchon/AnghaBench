
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct section {int sz; int buf; int align; int os; } ;
struct TYPE_3__ {int d_version; int d_size; int d_buf; scalar_t__ d_off; int d_align; } ;
typedef TYPE_1__ Elf_Data ;


 int EV_CURRENT ;
 int EXIT_FAILURE ;
 int elf_errmsg (int) ;
 TYPE_1__* elf_newdata (int ) ;
 int errx (int ,char*,int ) ;

__attribute__((used)) static void
finalize_data_section(struct section *s)
{
 Elf_Data *od;

 if ((od = elf_newdata(s->os)) == ((void*)0))
  errx(EXIT_FAILURE, "elf_newdata() failed: %s",
      elf_errmsg(-1));
 od->d_align = s->align;
 od->d_off = 0;
 od->d_buf = s->buf;
 od->d_size = s->sz;
 od->d_version = EV_CURRENT;
}
