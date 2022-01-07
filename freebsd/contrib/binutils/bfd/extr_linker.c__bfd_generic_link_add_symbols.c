
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int generic_link_add_symbols (int *,struct bfd_link_info*,int ) ;

bfd_boolean
_bfd_generic_link_add_symbols (bfd *abfd, struct bfd_link_info *info)
{
  return generic_link_add_symbols (abfd, info, FALSE);
}
