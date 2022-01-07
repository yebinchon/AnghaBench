
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
struct TYPE_2__ {int * wrap_hash; } ;


 int TRUE ;
 int _ (char*) ;
 int * bfd_hash_lookup (int *,char const*,int ,int ) ;
 int bfd_hash_newfunc ;
 int bfd_hash_table_init_n (int *,int ,int,int) ;
 int einfo (int ) ;
 TYPE_1__ link_info ;
 int * xmalloc (int) ;

void
add_wrap (const char *name)
{
  if (link_info.wrap_hash == ((void*)0))
    {
      link_info.wrap_hash = xmalloc (sizeof (struct bfd_hash_table));
      if (!bfd_hash_table_init_n (link_info.wrap_hash,
      bfd_hash_newfunc,
      sizeof (struct bfd_hash_entry),
      61))
 einfo (_("%P%F: bfd_hash_table_init failed: %E\n"));
    }

  if (bfd_hash_lookup (link_info.wrap_hash, name, TRUE, TRUE) == ((void*)0))
    einfo (_("%P%F: bfd_hash_lookup failed: %E\n"));
}
