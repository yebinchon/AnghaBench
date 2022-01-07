
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;


 scalar_t__ TRUE ;
 int _ (char*) ;
 int bfd_get_filename (int *) ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_target_aout_flavour ;
 scalar_t__ bfd_target_coff_flavour ;
 scalar_t__ bfd_target_ieee_flavour ;
 void* debug_init () ;
 int non_fatal (int ,int ) ;
 int parse_coff (int *,int **,long,void*) ;
 int read_ieee_debugging_info (int *,void*,scalar_t__*) ;
 int read_section_stabs_debugging_info (int *,int **,long,void*,scalar_t__*) ;
 int read_symbol_stabs_debugging_info (int *,int **,long,void*,scalar_t__*) ;

void *
read_debugging_info (bfd *abfd, asymbol **syms, long symcount)
{
  void *dhandle;
  bfd_boolean found;

  dhandle = debug_init ();
  if (dhandle == ((void*)0))
    return ((void*)0);

  if (! read_section_stabs_debugging_info (abfd, syms, symcount, dhandle,
        &found))
    return ((void*)0);

  if (bfd_get_flavour (abfd) == bfd_target_aout_flavour)
    {
      if (! read_symbol_stabs_debugging_info (abfd, syms, symcount, dhandle,
           &found))
 return ((void*)0);
    }

  if (bfd_get_flavour (abfd) == bfd_target_ieee_flavour)
    {
      if (! read_ieee_debugging_info (abfd, dhandle, &found))
 return ((void*)0);
    }



  if (! found
      && bfd_get_flavour (abfd) == bfd_target_coff_flavour
      && symcount > 0)
    {
      if (! parse_coff (abfd, syms, symcount, dhandle))
 return ((void*)0);
      found = TRUE;
    }

  if (! found)
    {
      non_fatal (_("%s: no recognized debugging information"),
   bfd_get_filename (abfd));
      return ((void*)0);
    }

  return dhandle;
}
