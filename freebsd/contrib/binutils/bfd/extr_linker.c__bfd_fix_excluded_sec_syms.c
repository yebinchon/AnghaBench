
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int hash; } ;
typedef int bfd ;


 int bfd_link_hash_traverse (int ,int ,int *) ;
 int fix_syms ;

void
_bfd_fix_excluded_sec_syms (bfd *obfd, struct bfd_link_info *info)
{
  bfd_link_hash_traverse (info->hash, fix_syms, obfd);
}
