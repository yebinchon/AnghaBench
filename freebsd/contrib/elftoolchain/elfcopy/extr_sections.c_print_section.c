
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct section {scalar_t__ sz; int is; int * buf; } ;
struct TYPE_6__ {scalar_t__ d_size; int * d_buf; } ;
typedef TYPE_1__ Elf_Data ;


 int EXIT_FAILURE ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_getdata (int ,TYPE_1__*) ;
 TYPE_1__* elf_rawdata (int ,TYPE_1__*) ;
 int errx (int ,char*,int ) ;
 int print_data (int *,scalar_t__) ;
 int putchar (char) ;

__attribute__((used)) static void
print_section(struct section *s)
{
 Elf_Data *id;
 int elferr;

 if (s->buf != ((void*)0) && s->sz > 0) {
  print_data(s->buf, s->sz);
 } else {
  id = ((void*)0);
  while ((id = elf_getdata(s->is, id)) != ((void*)0) ||
      (id = elf_rawdata(s->is, id)) != ((void*)0)) {
   (void) elf_errno();
   print_data(id->d_buf, id->d_size);
  }
  elferr = elf_errno();
  if (elferr != 0)
   errx(EXIT_FAILURE, "elf_getdata() failed: %s",
       elf_errmsg(elferr));
 }
 putchar('\n');
}
