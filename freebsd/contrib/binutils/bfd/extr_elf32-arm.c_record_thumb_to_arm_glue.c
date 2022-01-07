
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* string; } ;
struct TYPE_7__ {TYPE_1__ root; } ;
struct elf_link_hash_entry {int forced_local; int type; TYPE_2__ root; } ;
struct elf32_arm_link_hash_table {scalar_t__ thumb_glue_size; int * bfd_of_glue_owner; int root; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
struct TYPE_8__ {int size; } ;
typedef TYPE_3__ asection ;


 int BFD_ASSERT (char*) ;
 int BSF_GLOBAL ;
 int BSF_LOCAL ;
 char* CHANGE_TO_ARM ;
 int ELF_ST_INFO (int ,int ) ;
 int FALSE ;
 int STB_LOCAL ;
 int STT_ARM_TFUNC ;
 char* THUMB2ARM_GLUE_ENTRY_NAME ;
 int THUMB2ARM_GLUE_SECTION_NAME ;
 scalar_t__ THUMB2ARM_GLUE_SIZE ;
 int TRUE ;
 int _bfd_generic_link_add_one_symbol (struct bfd_link_info*,int *,char*,int ,TYPE_3__*,scalar_t__,int *,int ,int ,struct bfd_link_hash_entry**) ;
 TYPE_3__* bfd_get_section_by_name (int *,int ) ;
 char* bfd_malloc (scalar_t__) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 struct elf_link_hash_entry* elf_link_hash_lookup (int *,char*,int ,int ,int ) ;
 int free (char*) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
record_thumb_to_arm_glue (struct bfd_link_info *link_info,
     struct elf_link_hash_entry *h)
{
  const char *name = h->root.root.string;
  asection *s;
  char *tmp_name;
  struct elf_link_hash_entry *myh;
  struct bfd_link_hash_entry *bh;
  struct elf32_arm_link_hash_table *hash_table;
  bfd_vma val;

  hash_table = elf32_arm_hash_table (link_info);

  BFD_ASSERT (hash_table != ((void*)0));
  BFD_ASSERT (hash_table->bfd_of_glue_owner != ((void*)0));

  s = bfd_get_section_by_name
    (hash_table->bfd_of_glue_owner, THUMB2ARM_GLUE_SECTION_NAME);

  BFD_ASSERT (s != ((void*)0));

  tmp_name = bfd_malloc ((bfd_size_type) strlen (name)
    + strlen (THUMB2ARM_GLUE_ENTRY_NAME) + 1);

  BFD_ASSERT (tmp_name);

  sprintf (tmp_name, THUMB2ARM_GLUE_ENTRY_NAME, name);

  myh = elf_link_hash_lookup
    (&(hash_table)->root, tmp_name, FALSE, FALSE, TRUE);

  if (myh != ((void*)0))
    {

      free (tmp_name);
      return;
    }

  bh = ((void*)0);
  val = hash_table->thumb_glue_size + 1;
  _bfd_generic_link_add_one_symbol (link_info, hash_table->bfd_of_glue_owner,
        tmp_name, BSF_GLOBAL, s, val,
        ((void*)0), TRUE, FALSE, &bh);


  myh = (struct elf_link_hash_entry *) bh;
  myh->type = ELF_ST_INFO (STB_LOCAL, STT_ARM_TFUNC);
  myh->forced_local = 1;

  free (tmp_name);





  tmp_name = bfd_malloc ((bfd_size_type) strlen (name)
    + strlen ("__%s_change_to_arm") + 1);

  BFD_ASSERT (tmp_name);

  sprintf (tmp_name, "__%s_change_to_arm", name);

  bh = ((void*)0);
  val = hash_table->thumb_glue_size + 4,
  _bfd_generic_link_add_one_symbol (link_info, hash_table->bfd_of_glue_owner,
        tmp_name, BSF_LOCAL, s, val,
        ((void*)0), TRUE, FALSE, &bh);

  free (tmp_name);

  s->size += THUMB2ARM_GLUE_SIZE;
  hash_table->thumb_glue_size += THUMB2ARM_GLUE_SIZE;

  return;
}
