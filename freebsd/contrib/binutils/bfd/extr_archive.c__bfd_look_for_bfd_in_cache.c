
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar_cache {int * arbfd; int ptr; } ;
typedef scalar_t__ htab_t ;
typedef int file_ptr ;
typedef int bfd ;
struct TYPE_2__ {scalar_t__ cache; } ;


 TYPE_1__* bfd_ardata (int *) ;
 scalar_t__ htab_find (scalar_t__,struct ar_cache*) ;

bfd *
_bfd_look_for_bfd_in_cache (bfd *arch_bfd, file_ptr filepos)
{
  htab_t hash_table = bfd_ardata (arch_bfd)->cache;
  struct ar_cache m;
  m.ptr = filepos;

  if (hash_table)
    {
      struct ar_cache *entry = (struct ar_cache *) htab_find (hash_table, &m);
      if (!entry)
 return ((void*)0);
      else
 return entry->arbfd;
    }
  else
    return ((void*)0);
}
