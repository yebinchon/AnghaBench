
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* string; } ;
struct TYPE_4__ {TYPE_1__ root; } ;
struct coff_link_hash_entry {int class; TYPE_2__ root; } ;
struct coff_arm_link_hash_table {scalar_t__ thumb_glue_size; int * bfd_of_glue_owner; scalar_t__ support_old_code; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int asection ;


 char* BACK_FROM_ARM ;
 int BFD_ASSERT (char*) ;
 int BSF_GLOBAL ;
 int BSF_LOCAL ;
 char* CHANGE_TO_ARM ;
 int C_THUMBEXTFUNC ;
 int FALSE ;
 char* THUMB2ARM_GLUE_ENTRY_NAME ;
 int THUMB2ARM_GLUE_SECTION_NAME ;
 scalar_t__ THUMB2ARM_GLUE_SIZE ;
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
record_thumb_to_arm_glue (struct bfd_link_info * info,
     struct coff_link_hash_entry * h)
{
  const char * name = h->root.root.string;
  asection * s;
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
    (globals->bfd_of_glue_owner, THUMB2ARM_GLUE_SECTION_NAME);

  BFD_ASSERT (s != ((void*)0));

  amt = strlen (name) + strlen (THUMB2ARM_GLUE_ENTRY_NAME) + 1;
  tmp_name = bfd_malloc (amt);

  BFD_ASSERT (tmp_name);

  sprintf (tmp_name, THUMB2ARM_GLUE_ENTRY_NAME, name);

  myh = coff_link_hash_lookup
    (coff_hash_table (info), tmp_name, FALSE, FALSE, TRUE);

  if (myh != ((void*)0))
    {
      free (tmp_name);

      return;
    }

  bh = ((void*)0);
  val = globals->thumb_glue_size + 1;
  bfd_coff_link_add_one_symbol (info, globals->bfd_of_glue_owner, tmp_name,
    BSF_GLOBAL, s, val, ((void*)0), TRUE, FALSE, &bh);


  myh = (struct coff_link_hash_entry *) bh;
  myh->class = C_THUMBEXTFUNC;

  free (tmp_name);






  amt = strlen (name) + strlen ("__%s_change_to_arm") + 1;
  tmp_name = bfd_malloc (amt);

  BFD_ASSERT (tmp_name);

  sprintf (tmp_name, globals->support_old_code ? "__%s_back_from_arm" : "__%s_change_to_arm", name);

  bh = ((void*)0);
  val = globals->thumb_glue_size + (globals->support_old_code ? 8 : 4);
  bfd_coff_link_add_one_symbol (info, globals->bfd_of_glue_owner, tmp_name,
    BSF_LOCAL, s, val, ((void*)0), TRUE, FALSE, &bh);

  free (tmp_name);

  globals->thumb_glue_size += THUMB2ARM_GLUE_SIZE;

  return;
}
