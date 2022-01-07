
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct section {int sz; int * buf; scalar_t__ nocopy; int os; int name; int is; } ;
struct TYPE_5__ {int d_align; int d_version; int d_size; int d_type; int * d_buf; scalar_t__ d_off; } ;
typedef TYPE_1__ Elf_Data ;


 int EXIT_FAILURE ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_getdata (int ,int *) ;
 TYPE_1__* elf_newdata (int ) ;
 TYPE_1__* elf_rawdata (int ,int *) ;
 int errx (int ,char*,int ) ;

void
copy_data(struct section *s)
{
 Elf_Data *id, *od;
 int elferr;

 if (s->nocopy && s->buf == ((void*)0))
  return;

 if ((id = elf_getdata(s->is, ((void*)0))) == ((void*)0)) {
  (void) elf_errno();
  if ((id = elf_rawdata(s->is, ((void*)0))) == ((void*)0)) {
   elferr = elf_errno();
   if (elferr != 0)
    errx(EXIT_FAILURE, "failed to read section:"
        " %s", s->name);
   return;
  }
 }

 if ((od = elf_newdata(s->os)) == ((void*)0))
  errx(EXIT_FAILURE, "elf_newdata() failed: %s",
      elf_errmsg(-1));

 if (s->nocopy) {

  od->d_align = id->d_align;
  od->d_off = 0;
  od->d_buf = s->buf;
  od->d_type = id->d_type;
  od->d_size = s->sz;
  od->d_version = id->d_version;
 } else {
  od->d_align = id->d_align;
  od->d_off = id->d_off;
  od->d_buf = id->d_buf;
  od->d_type = id->d_type;
  od->d_size = id->d_size;
  od->d_version = id->d_version;
 }
 if (od->d_align == 0)
  od->d_align = 1;
}
