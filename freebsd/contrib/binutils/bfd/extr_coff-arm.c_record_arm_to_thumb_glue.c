
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* string; } ;
struct TYPE_4__ {TYPE_1__ root; } ;
struct coff_link_hash_entry {TYPE_2__ root; } ;
struct coff_arm_link_hash_table {scalar_t__ arm_glue_size; int * bfd_of_glue_owner; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int asection ;


 char* ARM2THUMB_GLUE_ENTRY_NAME ;
 int ARM2THUMB_GLUE_SECTION_NAME ;
 scalar_t__ ARM2THUMB_GLUE_SIZE ;
 int BFD_ASSERT (char*) ;
 int BSF_GLOBAL ;
 int FALSE ;
 int TRUE ;
 int bfd_coff_link_add_one_symbol (struct bfd_link_info*,int *,char*,int ,int *,scalar_t__,int *,int ,int ,struct bfd_link_hash_entry**) ;
 int * bfd_get_section_by_name (int *,int ) ;
 char* bfd_malloc (scalar_t__) ;
 struct coff_arm_link_hash_table* coff_arm_hash_table (struct bfd_link_info*) ;
 int coff_hash_table (struct bfd_link_info*) ;
 struct coff_link_hash_entry* coff_link_hash_lookup (int ,char*,int ,int ,int ) ;
 int free (char*) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
record_arm_to_thumb_glue (struct bfd_link_info * info,
     struct coff_link_hash_entry * h)
{
  const char * name = h->root.root.string;
  register asection * s;
  char * tmp_name;
  struct coff_link_hash_entry * myh;
  struct bfd_link_hash_entry * bh;
  struct coff_arm_link_hash_table * globals;
  bfd_vma val;
  bfd_size_type amt;

  globals = coff_arm_hash_table (info);

  BFD_ASSERT (globals != ((void*)0));
  BFD_ASSERT (globals->bfd_of_glue_owner != ((void*)0));

  s = bfd_get_section_by_name
    (globals->bfd_of_glue_owner, ARM2THUMB_GLUE_SECTION_NAME);

  BFD_ASSERT (s != ((void*)0));

  amt = strlen (name) + strlen (ARM2THUMB_GLUE_ENTRY_NAME) + 1;
  tmp_name = bfd_malloc (amt);

  BFD_ASSERT (tmp_name);

  sprintf (tmp_name, ARM2THUMB_GLUE_ENTRY_NAME, name);

  myh = coff_link_hash_lookup
    (coff_hash_table (info), tmp_name, FALSE, FALSE, TRUE);

  if (myh != ((void*)0))
    {
      free (tmp_name);

      return;
    }




  bh = ((void*)0);
  val = globals->arm_glue_size + 1;
  bfd_coff_link_add_one_symbol (info, globals->bfd_of_glue_owner, tmp_name,
    BSF_GLOBAL, s, val, ((void*)0), TRUE, FALSE, &bh);

  free (tmp_name);

  globals->arm_glue_size += ARM2THUMB_GLUE_SIZE;

  return;
}
