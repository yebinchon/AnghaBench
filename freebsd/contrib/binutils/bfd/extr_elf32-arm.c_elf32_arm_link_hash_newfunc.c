
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_arm_link_hash_entry {int plt_got_offset; int * export_glue; scalar_t__ plt_thumb_refcount; int tls_type; int * relocs_copied; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 int GOT_UNKNOWN ;
 scalar_t__ _bfd_elf_link_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 struct elf32_arm_link_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;

__attribute__((used)) static struct bfd_hash_entry *
elf32_arm_link_hash_newfunc (struct bfd_hash_entry * entry,
                             struct bfd_hash_table * table,
                             const char * string)
{
  struct elf32_arm_link_hash_entry * ret =
    (struct elf32_arm_link_hash_entry *) entry;



  if (ret == (struct elf32_arm_link_hash_entry *) ((void*)0))
    ret = bfd_hash_allocate (table, sizeof (struct elf32_arm_link_hash_entry));
  if (ret == ((void*)0))
    return (struct bfd_hash_entry *) ret;


  ret = ((struct elf32_arm_link_hash_entry *)
  _bfd_elf_link_hash_newfunc ((struct bfd_hash_entry *) ret,
         table, string));
  if (ret != ((void*)0))
    {
      ret->relocs_copied = ((void*)0);
      ret->tls_type = GOT_UNKNOWN;
      ret->plt_thumb_refcount = 0;
      ret->plt_got_offset = -1;
      ret->export_glue = ((void*)0);
    }

  return (struct bfd_hash_entry *) ret;
}
