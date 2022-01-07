
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_strtab_hash {int dummy; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ bfd ;


 int BFD_TRADITIONAL_FORMAT ;
 scalar_t__ BYTES_IN_WORD ;
 int FALSE ;
 int TRUE ;
 scalar_t__ _bfd_stringtab_add (struct bfd_strtab_hash*,char const*,int ,int ) ;

__attribute__((used)) static inline bfd_size_type
add_to_stringtab (bfd *abfd,
    struct bfd_strtab_hash *tab,
    const char *str,
    bfd_boolean copy)
{
  bfd_boolean hash;
  bfd_size_type index;


  if (str == 0 || *str == '\0')
    return 0;



  hash = TRUE;
  if ((abfd->flags & BFD_TRADITIONAL_FORMAT) != 0)
    hash = FALSE;

  index = _bfd_stringtab_add (tab, str, hash, copy);

  if (index != (bfd_size_type) -1)


    index += BYTES_IN_WORD;

  return index;
}
