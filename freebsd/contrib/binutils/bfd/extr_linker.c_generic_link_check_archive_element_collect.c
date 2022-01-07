
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int TRUE ;
 int generic_link_check_archive_element (int *,struct bfd_link_info*,int *,int ) ;

__attribute__((used)) static bfd_boolean
generic_link_check_archive_element_collect (bfd *abfd,
         struct bfd_link_info *info,
         bfd_boolean *pneeded)
{
  return generic_link_check_archive_element (abfd, info, pneeded, TRUE);
}
