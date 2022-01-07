
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct core_fns {scalar_t__ (* core_sniffer ) (struct core_fns*,int *) ;struct core_fns* next; } ;
typedef int bfd ;


 int bfd_get_filename (int *) ;
 struct core_fns* core_file_fns ;
 scalar_t__ core_gdbarch ;
 scalar_t__ gdbarch_regset_from_core_section_p (scalar_t__) ;
 scalar_t__ stub1 (struct core_fns*,int *) ;
 int warning (char*,int ,...) ;

__attribute__((used)) static struct core_fns *
sniff_core_bfd (bfd *abfd)
{
  struct core_fns *cf;
  struct core_fns *yummy = ((void*)0);
  int matches = 0;;


  if (core_gdbarch && gdbarch_regset_from_core_section_p (core_gdbarch))
    return ((void*)0);

  for (cf = core_file_fns; cf != ((void*)0); cf = cf->next)
    {
      if (cf->core_sniffer (cf, abfd))
 {
   yummy = cf;
   matches++;
 }
    }
  if (matches > 1)
    {
      warning ("\"%s\": ambiguous core format, %d handlers match",
        bfd_get_filename (abfd), matches);
    }
  else if (matches == 0)
    {
      warning ("\"%s\": no core file handler recognizes format, using default",
        bfd_get_filename (abfd));
    }
  if (yummy == ((void*)0))
    {
      yummy = core_file_fns;
    }
  return (yummy);
}
