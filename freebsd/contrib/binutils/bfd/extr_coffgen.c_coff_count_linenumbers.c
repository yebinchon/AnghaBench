
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* section; } ;
struct TYPE_13__ {TYPE_2__ symbol; TYPE_6__* lineno; } ;
typedef TYPE_3__ coff_symbol_type ;
struct TYPE_14__ {int ** outsymbols; TYPE_5__* sections; } ;
typedef TYPE_4__ bfd ;
typedef int asymbol ;
struct TYPE_15__ {scalar_t__ lineno_count; struct TYPE_15__* next; } ;
typedef TYPE_5__ asection ;
struct TYPE_16__ {scalar_t__ line_number; } ;
typedef TYPE_6__ alent ;
struct TYPE_11__ {TYPE_5__* output_section; int * owner; } ;


 int BFD_ASSERT (int) ;
 int bfd_asymbol_bfd (int *) ;
 scalar_t__ bfd_family_coff (int ) ;
 unsigned int bfd_get_symcount (TYPE_4__*) ;
 int bfd_is_const_section (TYPE_5__*) ;
 TYPE_3__* coffsymbol (int *) ;

int
coff_count_linenumbers (bfd *abfd)
{
  unsigned int limit = bfd_get_symcount (abfd);
  unsigned int i;
  int total = 0;
  asymbol **p;
  asection *s;

  if (limit == 0)
    {


      for (s = abfd->sections; s != ((void*)0); s = s->next)
 total += s->lineno_count;
      return total;
    }

  for (s = abfd->sections; s != ((void*)0); s = s->next)
    BFD_ASSERT (s->lineno_count == 0);

  for (p = abfd->outsymbols, i = 0; i < limit; i++, p++)
    {
      asymbol *q_maybe = *p;

      if (bfd_family_coff (bfd_asymbol_bfd (q_maybe)))
 {
   coff_symbol_type *q = coffsymbol (q_maybe);




   if (q->lineno != ((void*)0)
       && q->symbol.section->owner != ((void*)0))
     {


       alent *l = q->lineno;

       do
  {
    asection * sec = q->symbol.section->output_section;


    if (! bfd_is_const_section (sec))
      sec->lineno_count ++;

    ++total;
    ++l;
  }
       while (l->line_number != 0);
     }
 }
    }

  return total;
}
