
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ symindex ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ carsym ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;


 scalar_t__ BFD_NO_MORE_SYMBOLS ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* _ (char*) ;
 int bfd_fatal (char*) ;
 int * bfd_get_elt_at_index (int *,scalar_t__) ;
 char* bfd_get_filename (int *) ;
 scalar_t__ bfd_get_next_mapent (int *,scalar_t__,TYPE_1__**) ;
 int print_symname (char*,char*,int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_symdef_entry (bfd *abfd)
{
  symindex idx = BFD_NO_MORE_SYMBOLS;
  carsym *thesym;
  bfd_boolean everprinted = FALSE;

  for (idx = bfd_get_next_mapent (abfd, idx, &thesym);
       idx != BFD_NO_MORE_SYMBOLS;
       idx = bfd_get_next_mapent (abfd, idx, &thesym))
    {
      bfd *elt;
      if (!everprinted)
 {
   printf (_("\nArchive index:\n"));
   everprinted = TRUE;
 }
      elt = bfd_get_elt_at_index (abfd, idx);
      if (elt == ((void*)0))
 bfd_fatal ("bfd_get_elt_at_index");
      if (thesym->name != (char *) ((void*)0))
 {
   print_symname ("%s", thesym->name, abfd);
   printf (" in %s\n", bfd_get_filename (elt));
 }
    }
}
