
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_size_type ;
typedef int bfd ;


 char* bfd_get_filename (int *) ;
 int bfd_map_over_sections (int *,int ,int *) ;
 int * bfd_my_archive (int *) ;
 int printf (char*,...) ;
 int rprint_number (char*,scalar_t__) ;
 void* size_number (scalar_t__) ;
 scalar_t__ svi_maxvma ;
 char* svi_namelen ;
 char* svi_sizelen ;
 scalar_t__ svi_total ;
 void* svi_vmalen ;
 int sysv_internal_printer ;
 int sysv_internal_sizer ;

__attribute__((used)) static void
print_sysv_format (bfd *file)
{

  svi_total = 0;
  svi_maxvma = 0;
  svi_namelen = 0;
  bfd_map_over_sections (file, sysv_internal_sizer, ((void*)0));
  svi_vmalen = size_number ((bfd_size_type)svi_maxvma);

  if ((size_t) svi_vmalen < sizeof ("addr") - 1)
    svi_vmalen = sizeof ("addr")-1;

  svi_sizelen = size_number (svi_total);
  if ((size_t) svi_sizelen < sizeof ("size") - 1)
    svi_sizelen = sizeof ("size")-1;

  svi_total = 0;
  printf ("%s  ", bfd_get_filename (file));

  if (bfd_my_archive (file))
    printf (" (ex %s)", bfd_get_filename (bfd_my_archive (file)));

  printf (":\n%-*s   %*s   %*s\n", svi_namelen, "section",
   svi_sizelen, "size", svi_vmalen, "addr");

  bfd_map_over_sections (file, sysv_internal_printer, ((void*)0));

  printf ("%-*s   ", svi_namelen, "Total");
  rprint_number (svi_sizelen, svi_total);
  printf ("\n\n");
}
