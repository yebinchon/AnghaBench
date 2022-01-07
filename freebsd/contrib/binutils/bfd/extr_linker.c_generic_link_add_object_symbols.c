
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_symbol {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 struct bfd_symbol** _bfd_generic_link_get_symbols (int *) ;
 int _bfd_generic_link_get_symcount (int *) ;
 int generic_link_add_symbol_list (int *,struct bfd_link_info*,int ,struct bfd_symbol**,int ) ;
 int generic_link_read_symbols (int *) ;

__attribute__((used)) static bfd_boolean
generic_link_add_object_symbols (bfd *abfd,
     struct bfd_link_info *info,
     bfd_boolean collect)
{
  bfd_size_type symcount;
  struct bfd_symbol **outsyms;

  if (! generic_link_read_symbols (abfd))
    return FALSE;
  symcount = _bfd_generic_link_get_symcount (abfd);
  outsyms = _bfd_generic_link_get_symbols (abfd);
  return generic_link_add_symbol_list (abfd, info, symcount, outsyms, collect);
}
