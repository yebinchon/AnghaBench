
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_link_hash_entry {int dummy; } ;
struct elf32_arm_link_hash_table {int root; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_size_type ;


 char* ARM2THUMB_GLUE_ENTRY_NAME ;
 int BFD_ASSERT (char*) ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int asprintf (char**,int ,char*,char const*) ;
 char* bfd_malloc (scalar_t__) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 struct elf_link_hash_entry* elf_link_hash_lookup (int *,char*,int ,int ,int ) ;
 int free (char*) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct elf_link_hash_entry *
find_arm_glue (struct bfd_link_info *link_info,
        const char *name,
        char **error_message)
{
  char *tmp_name;
  struct elf_link_hash_entry *myh;
  struct elf32_arm_link_hash_table *hash_table;


  hash_table = elf32_arm_hash_table (link_info);

  tmp_name = bfd_malloc ((bfd_size_type) strlen (name)
    + strlen (ARM2THUMB_GLUE_ENTRY_NAME) + 1);

  BFD_ASSERT (tmp_name);

  sprintf (tmp_name, ARM2THUMB_GLUE_ENTRY_NAME, name);

  myh = elf_link_hash_lookup
    (&(hash_table)->root, tmp_name, FALSE, FALSE, TRUE);

  if (myh == ((void*)0))
    asprintf (error_message, _("unable to find ARM glue '%s' for '%s'"),
       tmp_name, name);

  free (tmp_name);

  return myh;
}
