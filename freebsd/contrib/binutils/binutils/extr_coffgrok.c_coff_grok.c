
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct coff_symbol {int dummy; } ;
struct coff_ofile {int dummy; } ;
struct TYPE_8__ {int filename; } ;
typedef TYPE_1__ bfd ;
typedef int asymbol ;


 TYPE_1__* abfd ;
 scalar_t__ bfd_canonicalize_symtab (TYPE_1__*,int **) ;
 int bfd_fatal (int ) ;
 long bfd_get_symtab_upper_bound (TYPE_1__*) ;
 struct coff_ofile* doit () ;
 int obj_raw_syment_count (TYPE_1__*) ;
 int obj_raw_syments (TYPE_1__*) ;
 int rawcount ;
 int rawsyms ;
 scalar_t__ symcount ;
 int ** syms ;
 struct coff_symbol** tindex ;
 scalar_t__ xcalloc (int,int ) ;
 scalar_t__ xmalloc (long) ;

struct coff_ofile *
coff_grok (bfd *inabfd)
{
  long storage;
  struct coff_ofile *p;
  abfd = inabfd;
  storage = bfd_get_symtab_upper_bound (abfd);

  if (storage < 0)
    bfd_fatal (abfd->filename);

  syms = (asymbol **) xmalloc (storage);
  symcount = bfd_canonicalize_symtab (abfd, syms);
  if (symcount < 0)
    bfd_fatal (abfd->filename);
  rawsyms = obj_raw_syments (abfd);
  rawcount = obj_raw_syment_count (abfd);;
  tindex = (struct coff_symbol **) (xcalloc (sizeof (struct coff_symbol *), rawcount));

  p = doit ();
  return p;
}
