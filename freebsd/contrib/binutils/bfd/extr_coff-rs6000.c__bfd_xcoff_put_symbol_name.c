
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ _n_offset; scalar_t__ _n_zeroes; } ;
struct TYPE_6__ {TYPE_1__ _n_n; int _n_name; } ;
struct internal_syment {TYPE_2__ _n; } ;
struct bfd_strtab_hash {int dummy; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_3__ bfd ;


 int BFD_TRADITIONAL_FORMAT ;
 int FALSE ;
 scalar_t__ STRING_SIZE_SIZE ;
 scalar_t__ SYMNMLEN ;
 int TRUE ;
 scalar_t__ _bfd_stringtab_add (struct bfd_strtab_hash*,char const*,int ,int ) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (int ,char const*,scalar_t__) ;

__attribute__((used)) static bfd_boolean
_bfd_xcoff_put_symbol_name (bfd *abfd, struct bfd_strtab_hash *strtab,
       struct internal_syment *sym,
       const char *name)
{
  if (strlen (name) <= SYMNMLEN)
    {
      strncpy (sym->_n._n_name, name, SYMNMLEN);
    }
  else
    {
      bfd_boolean hash;
      bfd_size_type indx;

      hash = TRUE;
      if ((abfd->flags & BFD_TRADITIONAL_FORMAT) != 0)
 hash = FALSE;
      indx = _bfd_stringtab_add (strtab, name, hash, FALSE);
      if (indx == (bfd_size_type) -1)
 return FALSE;
      sym->_n._n_n._n_zeroes = 0;
      sym->_n._n_n._n_offset = STRING_SIZE_SIZE + indx;
    }
  return TRUE;
}
