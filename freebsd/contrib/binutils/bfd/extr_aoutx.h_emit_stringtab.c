
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_strtab_hash {int dummy; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int BYTES_IN_WORD ;
 int FALSE ;
 int PUT_WORD (int *,int,int *) ;
 int _bfd_stringtab_emit (int *,struct bfd_strtab_hash*) ;
 int _bfd_stringtab_size (struct bfd_strtab_hash*) ;
 scalar_t__ bfd_bwrite (void*,scalar_t__,int *) ;

__attribute__((used)) static bfd_boolean
emit_stringtab (bfd *abfd, struct bfd_strtab_hash *tab)
{
  bfd_byte buffer[BYTES_IN_WORD];
  bfd_size_type amt = BYTES_IN_WORD;


  PUT_WORD (abfd, _bfd_stringtab_size (tab) + BYTES_IN_WORD, buffer);
  if (bfd_bwrite ((void *) buffer, amt, abfd) != amt)
    return FALSE;

  return _bfd_stringtab_emit (abfd, tab);
}
