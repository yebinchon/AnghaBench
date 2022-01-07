
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_strtab_hash {int xcoff; } ;


 int TRUE ;
 struct bfd_strtab_hash* _bfd_stringtab_init () ;

struct bfd_strtab_hash *
_bfd_xcoff_stringtab_init (void)
{
  struct bfd_strtab_hash *ret;

  ret = _bfd_stringtab_init ();
  if (ret != ((void*)0))
    ret->xcoff = TRUE;
  return ret;
}
