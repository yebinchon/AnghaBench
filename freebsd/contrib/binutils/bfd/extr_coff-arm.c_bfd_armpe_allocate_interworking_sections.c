
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct coff_arm_link_hash_table {scalar_t__ arm_glue_size; scalar_t__ thumb_glue_size; int * bfd_of_glue_owner; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_3__ {scalar_t__ size; int * contents; } ;
typedef TYPE_1__ asection ;


 int ARM2THUMB_GLUE_SECTION_NAME ;
 int BFD_ASSERT (int ) ;
 int THUMB2ARM_GLUE_SECTION_NAME ;
 int TRUE ;
 int * bfd_alloc (int *,scalar_t__) ;
 TYPE_1__* bfd_get_section_by_name (int *,int ) ;
 struct coff_arm_link_hash_table* coff_arm_hash_table (struct bfd_link_info*) ;

bfd_boolean
bfd_arm_allocate_interworking_sections (struct bfd_link_info * info)
{
  asection * s;
  bfd_byte * foo;
  struct coff_arm_link_hash_table * globals;

  globals = coff_arm_hash_table (info);

  BFD_ASSERT (globals != ((void*)0));

  if (globals->arm_glue_size != 0)
    {
      BFD_ASSERT (globals->bfd_of_glue_owner != ((void*)0));

      s = bfd_get_section_by_name
 (globals->bfd_of_glue_owner, ARM2THUMB_GLUE_SECTION_NAME);

      BFD_ASSERT (s != ((void*)0));

      foo = bfd_alloc (globals->bfd_of_glue_owner, globals->arm_glue_size);

      s->size = globals->arm_glue_size;
      s->contents = foo;
    }

  if (globals->thumb_glue_size != 0)
    {
      BFD_ASSERT (globals->bfd_of_glue_owner != ((void*)0));

      s = bfd_get_section_by_name
 (globals->bfd_of_glue_owner, THUMB2ARM_GLUE_SECTION_NAME);

      BFD_ASSERT (s != ((void*)0));

      foo = bfd_alloc (globals->bfd_of_glue_owner, globals->thumb_glue_size);

      s->size = globals->thumb_glue_size;
      s->contents = foo;
    }

  return TRUE;
}
