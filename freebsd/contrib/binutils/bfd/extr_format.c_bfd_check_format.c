
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_format ;
typedef int bfd_boolean ;
typedef int bfd ;


 int bfd_check_format_matches (int *,int ,int *) ;

bfd_boolean
bfd_check_format (bfd *abfd, bfd_format format)
{
  return bfd_check_format_matches (abfd, format, ((void*)0));
}
