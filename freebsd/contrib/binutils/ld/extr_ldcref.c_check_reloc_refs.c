
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct lang_nocrossref {char const* name; struct lang_nocrossref* next; } ;
struct check_refs_info {char* sym_name; TYPE_7__* defsec; int asymbols; scalar_t__ global; TYPE_1__* ncrs; } ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_18__ {int owner; struct TYPE_18__* output_section; } ;
typedef TYPE_2__ asection ;
struct TYPE_19__ {TYPE_11__** sym_ptr_ptr; int address; } ;
typedef TYPE_3__ arelent ;
struct TYPE_20__ {TYPE_2__* output_section; } ;
struct TYPE_17__ {struct lang_nocrossref* list; } ;
struct TYPE_16__ {int flags; } ;


 int BSF_GLOBAL ;
 int BSF_LOCAL ;
 int BSF_SECTION_SYM ;
 int BSF_WEAK ;
 int _ (char*) ;
 char const* bfd_asymbol_name (TYPE_11__*) ;
 long bfd_canonicalize_reloc (int *,TYPE_2__*,TYPE_3__**,int ) ;
 long bfd_get_reloc_upper_bound (int *,TYPE_2__*) ;
 TYPE_7__* bfd_get_section (TYPE_11__*) ;
 char* bfd_get_section_name (int ,TYPE_2__*) ;
 scalar_t__ bfd_is_com_section (TYPE_7__*) ;
 scalar_t__ bfd_is_und_section (TYPE_7__*) ;
 int einfo (int ,int *,...) ;
 int free (TYPE_3__**) ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_3__** xmalloc (long) ;

__attribute__((used)) static void
check_reloc_refs (bfd *abfd, asection *sec, void *iarg)
{
  struct check_refs_info *info = iarg;
  asection *outsec;
  const char *outsecname;
  asection *outdefsec;
  const char *outdefsecname;
  struct lang_nocrossref *ncr;
  const char *symname;
  bfd_boolean global;
  long relsize;
  arelent **relpp;
  long relcount;
  arelent **p, **pend;

  outsec = sec->output_section;
  outsecname = bfd_get_section_name (outsec->owner, outsec);

  outdefsec = info->defsec->output_section;
  outdefsecname = bfd_get_section_name (outdefsec->owner, outdefsec);


  if (strcmp (outsecname, outdefsecname) == 0)
    return;

  for (ncr = info->ncrs->list; ncr != ((void*)0); ncr = ncr->next)
    if (strcmp (outsecname, ncr->name) == 0)
      break;

  if (ncr == ((void*)0))
    return;
  symname = info->sym_name;
  global = info->global;

  relsize = bfd_get_reloc_upper_bound (abfd, sec);
  if (relsize < 0)
    einfo (_("%B%F: could not read relocs: %E\n"), abfd);
  if (relsize == 0)
    return;

  relpp = xmalloc (relsize);
  relcount = bfd_canonicalize_reloc (abfd, sec, relpp, info->asymbols);
  if (relcount < 0)
    einfo (_("%B%F: could not read relocs: %E\n"), abfd);

  p = relpp;
  pend = p + relcount;
  for (; p < pend && *p != ((void*)0); p++)
    {
      arelent *q = *p;

      if (q->sym_ptr_ptr != ((void*)0)
   && *q->sym_ptr_ptr != ((void*)0)
   && ((global
        && (bfd_is_und_section (bfd_get_section (*q->sym_ptr_ptr))
     || bfd_is_com_section (bfd_get_section (*q->sym_ptr_ptr))
     || ((*q->sym_ptr_ptr)->flags & (BSF_GLOBAL
         | BSF_WEAK)) != 0))
       || (!global
    && ((*q->sym_ptr_ptr)->flags & (BSF_LOCAL
        | BSF_SECTION_SYM)) != 0
    && bfd_get_section (*q->sym_ptr_ptr) == info->defsec))
   && (symname != ((void*)0)
       ? strcmp (bfd_asymbol_name (*q->sym_ptr_ptr), symname) == 0
       : ((*q->sym_ptr_ptr)->flags & BSF_SECTION_SYM) != 0))
 {




   einfo (_("%X%C: prohibited cross reference from %s to `%T' in %s\n"),
   abfd, sec, q->address, outsecname,
   bfd_asymbol_name (*q->sym_ptr_ptr), outdefsecname);
 }
    }

  free (relpp);
}
