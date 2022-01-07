
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int _ (char*) ;
 int bfd_get_filename (int *) ;
 scalar_t__ export_all_symbols ;
 int inform (int ,int ) ;
 int scan_all_symbols (int *) ;
 int scan_drectve_symbols (int *) ;

__attribute__((used)) static void
scan_open_obj_file (bfd *abfd)
{
  if (export_all_symbols)
    scan_all_symbols (abfd);
  else
    scan_drectve_symbols (abfd);




  inform (_("Done reading %s"), bfd_get_filename (abfd));
}
