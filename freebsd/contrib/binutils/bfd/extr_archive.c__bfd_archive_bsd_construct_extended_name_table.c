
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int _bfd_construct_extended_name_table (int *,int ,char**,int *) ;

bfd_boolean
_bfd_archive_bsd_construct_extended_name_table (bfd *abfd,
      char **tabloc,
      bfd_size_type *tablen,
      const char **name)
{
  *name = "ARFILENAMES/";
  return _bfd_construct_extended_name_table (abfd, FALSE, tabloc, tablen);
}
