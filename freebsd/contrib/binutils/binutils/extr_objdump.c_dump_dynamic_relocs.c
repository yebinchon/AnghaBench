
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int arelent ;


 long bfd_canonicalize_dynamic_reloc (int *,int **,int ) ;
 int bfd_fatal (int ) ;
 long bfd_get_dynamic_reloc_upper_bound (int *) ;
 int bfd_get_filename (int *) ;
 int dump_reloc_set (int *,int *,int **,long) ;
 int dynsyms ;
 int free (int **) ;
 int printf (char*) ;
 int ** xmalloc (long) ;

__attribute__((used)) static void
dump_dynamic_relocs (bfd *abfd)
{
  long relsize;
  arelent **relpp;
  long relcount;

  relsize = bfd_get_dynamic_reloc_upper_bound (abfd);
  if (relsize < 0)
    bfd_fatal (bfd_get_filename (abfd));

  printf ("DYNAMIC RELOCATION RECORDS");

  if (relsize == 0)
    printf (" (none)\n\n");
  else
    {
      relpp = xmalloc (relsize);
      relcount = bfd_canonicalize_dynamic_reloc (abfd, relpp, dynsyms);

      if (relcount < 0)
 bfd_fatal (bfd_get_filename (abfd));
      else if (relcount == 0)
 printf (" (none)\n\n");
      else
 {
   printf ("\n");
   dump_reloc_set (abfd, ((void*)0), relpp, relcount);
   printf ("\n\n");
 }
      free (relpp);
    }
}
