
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_section {int flags; unsigned int alignment_power; struct bfd_section* next; } ;
struct bfd_link_info {int dummy; } ;
struct TYPE_4__ {struct bfd_section* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_5__ {struct bfd_section* tls_sec; } ;


 int SEC_THREAD_LOCAL ;
 TYPE_2__* elf_hash_table (struct bfd_link_info*) ;

struct bfd_section *
_bfd_elf_tls_setup (bfd *obfd, struct bfd_link_info *info)
{
  struct bfd_section *sec, *tls;
  unsigned int align = 0;

  for (sec = obfd->sections; sec != ((void*)0); sec = sec->next)
    if ((sec->flags & SEC_THREAD_LOCAL) != 0)
      break;
  tls = sec;

  for (; sec != ((void*)0) && (sec->flags & SEC_THREAD_LOCAL) != 0; sec = sec->next)
    if (sec->alignment_power > align)
      align = sec->alignment_power;

  elf_hash_table (info)->tls_sec = tls;



  if (tls != ((void*)0))
    tls->alignment_power = align;

  return tls;
}
