
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_24__ {TYPE_7__* section; } ;
struct TYPE_25__ {TYPE_8__ def; } ;
struct TYPE_22__ {int string; } ;
struct TYPE_15__ {TYPE_9__ u; TYPE_6__ root; } ;
struct elf_link_hash_entry {TYPE_10__ root; } ;
struct elf32_arm_link_hash_table {int obfd; int * bfd_of_glue_owner; } ;
struct elf32_arm_link_hash_entry {TYPE_4__* export_glue; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_16__ {TYPE_5__* output_section; scalar_t__ output_offset; int * contents; } ;
typedef TYPE_11__ asection ;
struct TYPE_23__ {int owner; } ;
struct TYPE_21__ {scalar_t__ vma; } ;
struct TYPE_17__ {scalar_t__ value; TYPE_11__* section; } ;
struct TYPE_18__ {TYPE_1__ def; } ;
struct TYPE_19__ {TYPE_2__ u; } ;
struct TYPE_20__ {TYPE_3__ root; } ;


 int ARM2THUMB_GLUE_SECTION_NAME ;
 int BFD_ASSERT (struct elf_link_hash_entry*) ;
 int TRUE ;
 TYPE_11__* bfd_get_section_by_name (int *,int ) ;
 struct elf_link_hash_entry* elf32_arm_create_thumb_stub (struct bfd_link_info*,int ,int ,int ,TYPE_11__*,scalar_t__,TYPE_11__*,char**) ;
 struct elf32_arm_link_hash_entry* elf32_arm_hash_entry (struct elf_link_hash_entry*) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
elf32_arm_to_thumb_export_stub (struct elf_link_hash_entry *h, void * inf)
{
  struct bfd_link_info * info = (struct bfd_link_info *) inf;
  asection * s;
  struct elf_link_hash_entry * myh;
  struct elf32_arm_link_hash_entry *eh;
  struct elf32_arm_link_hash_table * globals;
  asection *sec;
  bfd_vma val;
  char *error_message;

  eh = elf32_arm_hash_entry(h);

  if (eh->export_glue == ((void*)0))
    return TRUE;

  globals = elf32_arm_hash_table (info);

  BFD_ASSERT (globals != ((void*)0));
  BFD_ASSERT (globals->bfd_of_glue_owner != ((void*)0));

  s = bfd_get_section_by_name (globals->bfd_of_glue_owner,
          ARM2THUMB_GLUE_SECTION_NAME);
  BFD_ASSERT (s != ((void*)0));
  BFD_ASSERT (s->contents != ((void*)0));
  BFD_ASSERT (s->output_section != ((void*)0));

  sec = eh->export_glue->root.u.def.section;

  BFD_ASSERT (sec->output_section != ((void*)0));

  val = eh->export_glue->root.u.def.value + sec->output_offset
 + sec->output_section->vma;
  myh = elf32_arm_create_thumb_stub (info, h->root.root.string,
         h->root.u.def.section->owner,
         globals->obfd, sec, val, s,
         &error_message);
  BFD_ASSERT (myh);
  return TRUE;
}
