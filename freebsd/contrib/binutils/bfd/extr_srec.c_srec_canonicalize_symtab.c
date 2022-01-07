
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct srec_symbol {int val; int name; struct srec_symbol* next; } ;
typedef int bfd_size_type ;
struct TYPE_12__ {TYPE_1__* srec_data; } ;
struct TYPE_14__ {TYPE_2__ tdata; } ;
typedef TYPE_4__ bfd ;
struct TYPE_13__ {int * p; } ;
struct TYPE_15__ {TYPE_3__ udata; int section; int flags; int value; int name; TYPE_4__* the_bfd; } ;
typedef TYPE_5__ asymbol ;
struct TYPE_11__ {struct srec_symbol* symbols; TYPE_5__* csymbols; } ;


 int BSF_GLOBAL ;
 int bfd_abs_section_ptr ;
 TYPE_5__* bfd_alloc (TYPE_4__*,int) ;
 int bfd_get_symcount (TYPE_4__*) ;

__attribute__((used)) static long
srec_canonicalize_symtab (bfd *abfd, asymbol **alocation)
{
  bfd_size_type symcount = bfd_get_symcount (abfd);
  asymbol *csymbols;
  unsigned int i;

  csymbols = abfd->tdata.srec_data->csymbols;
  if (csymbols == ((void*)0))
    {
      asymbol *c;
      struct srec_symbol *s;

      csymbols = bfd_alloc (abfd, symcount * sizeof (asymbol));
      if (csymbols == ((void*)0) && symcount != 0)
 return 0;
      abfd->tdata.srec_data->csymbols = csymbols;

      for (s = abfd->tdata.srec_data->symbols, c = csymbols;
    s != ((void*)0);
    s = s->next, ++c)
 {
   c->the_bfd = abfd;
   c->name = s->name;
   c->value = s->val;
   c->flags = BSF_GLOBAL;
   c->section = bfd_abs_section_ptr;
   c->udata.p = ((void*)0);
 }
    }

  for (i = 0; i < symcount; i++)
    *alocation++ = csymbols++;
  *alocation = ((void*)0);

  return symcount;
}
