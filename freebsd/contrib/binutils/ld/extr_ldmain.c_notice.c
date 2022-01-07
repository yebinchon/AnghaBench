
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_link_info {int * notice_hash; int notice_all; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {scalar_t__ cref; } ;


 int FALSE ;
 int TRUE ;
 int add_cref (char const*,int *,int *,int ) ;
 int * bfd_hash_lookup (int *,char const*,int ,int ) ;
 scalar_t__ bfd_is_und_section (int *) ;
 TYPE_1__ command_line ;
 int einfo (char*,int *,char const*) ;
 int handle_asneeded_cref (int *,int ) ;
 int * nocrossref_list ;

__attribute__((used)) static bfd_boolean
notice (struct bfd_link_info *info,
 const char *name,
 bfd *abfd,
 asection *section,
 bfd_vma value)
{
  if (name == ((void*)0))
    {
      if (command_line.cref || nocrossref_list != ((void*)0))
 return handle_asneeded_cref (abfd, value);
      return TRUE;
    }

  if (! info->notice_all
      || (info->notice_hash != ((void*)0)
   && bfd_hash_lookup (info->notice_hash, name, FALSE, FALSE) != ((void*)0)))
    {
      if (bfd_is_und_section (section))
 einfo ("%B: reference to %s\n", abfd, name);
      else
 einfo ("%B: definition of %s\n", abfd, name);
    }

  if (command_line.cref || nocrossref_list != ((void*)0))
    add_cref (name, abfd, section, value);

  return TRUE;
}
