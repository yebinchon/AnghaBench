
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct get_relocs_info {scalar_t__* relcount; int ** relocs; TYPE_1__** secs; int syms; } ;
typedef int bfd ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ asection ;


 int SEC_RELOC ;
 scalar_t__ bfd_canonicalize_reloc (int *,TYPE_1__*,int *,int ) ;
 int bfd_fatal (int ) ;
 int bfd_get_filename (int *) ;
 long bfd_get_reloc_upper_bound (int *,TYPE_1__*) ;
 int * xmalloc (long) ;

__attribute__((used)) static void
get_relocs (bfd *abfd, asection *sec, void *dataarg)
{
  struct get_relocs_info *data = (struct get_relocs_info *) dataarg;

  *data->secs = sec;

  if ((sec->flags & SEC_RELOC) == 0)
    {
      *data->relocs = ((void*)0);
      *data->relcount = 0;
    }
  else
    {
      long relsize;

      relsize = bfd_get_reloc_upper_bound (abfd, sec);
      if (relsize < 0)
 bfd_fatal (bfd_get_filename (abfd));

      *data->relocs = xmalloc (relsize);
      *data->relcount = bfd_canonicalize_reloc (abfd, sec, *data->relocs,
      data->syms);
      if (*data->relcount < 0)
 bfd_fatal (bfd_get_filename (abfd));
    }

  ++data->secs;
  ++data->relocs;
  ++data->relcount;
}
