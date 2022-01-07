
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_strtab_hash {int dummy; } ;
typedef scalar_t__ bfd_size_type ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ _bfd_stringtab_add (struct bfd_strtab_hash*,char*,int ,int ) ;
 int _bfd_stringtab_free (struct bfd_strtab_hash*) ;
 struct bfd_strtab_hash* _bfd_stringtab_init () ;

struct bfd_strtab_hash *
_bfd_elf_stringtab_init (void)
{
  struct bfd_strtab_hash *ret;

  ret = _bfd_stringtab_init ();
  if (ret != ((void*)0))
    {
      bfd_size_type loc;

      loc = _bfd_stringtab_add (ret, "", TRUE, FALSE);
      BFD_ASSERT (loc == 0 || loc == (bfd_size_type) -1);
      if (loc == (bfd_size_type) -1)
 {
   _bfd_stringtab_free (ret);
   ret = ((void*)0);
 }
    }
  return ret;
}
