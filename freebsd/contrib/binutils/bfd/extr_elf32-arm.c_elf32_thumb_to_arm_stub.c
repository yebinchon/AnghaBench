
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int value; } ;
struct TYPE_10__ {TYPE_1__ def; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_3__ root; } ;
struct elf32_arm_link_hash_table {int thumb_glue_size; int * bfd_of_glue_owner; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd_signed_vma ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_13__ {int output_offset; int vma; TYPE_4__* output_section; int * contents; int * owner; } ;
typedef TYPE_5__ asection ;
struct TYPE_12__ {int vma; } ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int INTERWORK_FLAG (int *) ;
 int THUMB2ARM_GLUE_SECTION_NAME ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,int *,char const*) ;
 unsigned long bfd_get_32 (int *,int *) ;
 TYPE_5__* bfd_get_section_by_name (int *,int ) ;
 int bfd_put_32 (int *,int,int *) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 struct elf_link_hash_entry* find_thumb_glue (struct bfd_link_info*,char const*,char**) ;
 scalar_t__ insert_thumb_branch (unsigned long,long) ;
 int put_arm_insn (struct elf32_arm_link_hash_table*,int *,int,int *) ;
 int put_thumb_insn (struct elf32_arm_link_hash_table*,int *,int,int *) ;
 int stub1 (int ,int *,int *,char const*) ;
 scalar_t__ t2a1_bx_pc_insn ;
 scalar_t__ t2a2_noop_insn ;
 scalar_t__ t2a3_b_insn ;

__attribute__((used)) static int
elf32_thumb_to_arm_stub (struct bfd_link_info * info,
    const char * name,
    bfd * input_bfd,
    bfd * output_bfd,
    asection * input_section,
    bfd_byte * hit_data,
    asection * sym_sec,
    bfd_vma offset,
    bfd_signed_vma addend,
    bfd_vma val,
    char **error_message)
{
  asection * s = 0;
  bfd_vma my_offset;
  unsigned long int tmp;
  long int ret_offset;
  struct elf_link_hash_entry * myh;
  struct elf32_arm_link_hash_table * globals;

  myh = find_thumb_glue (info, name, error_message);
  if (myh == ((void*)0))
    return FALSE;

  globals = elf32_arm_hash_table (info);

  BFD_ASSERT (globals != ((void*)0));
  BFD_ASSERT (globals->bfd_of_glue_owner != ((void*)0));

  my_offset = myh->root.u.def.value;

  s = bfd_get_section_by_name (globals->bfd_of_glue_owner,
          THUMB2ARM_GLUE_SECTION_NAME);

  BFD_ASSERT (s != ((void*)0));
  BFD_ASSERT (s->contents != ((void*)0));
  BFD_ASSERT (s->output_section != ((void*)0));

  if ((my_offset & 0x01) == 0x01)
    {
      if (sym_sec != ((void*)0)
   && sym_sec->owner != ((void*)0)
   && !INTERWORK_FLAG (sym_sec->owner))
 {
   (*_bfd_error_handler)
     (_("%B(%s): warning: interworking not enabled.\n"
        "  first occurrence: %B: thumb call to arm"),
      sym_sec->owner, input_bfd, name);

   return FALSE;
 }

      --my_offset;
      myh->root.u.def.value = my_offset;

      put_thumb_insn (globals, output_bfd, (bfd_vma) t2a1_bx_pc_insn,
        s->contents + my_offset);

      put_thumb_insn (globals, output_bfd, (bfd_vma) t2a2_noop_insn,
        s->contents + my_offset + 2);

      ret_offset =

 ((bfd_signed_vma) val)
 - ((bfd_signed_vma)


    (s->output_offset

     + my_offset

     + s->output_section->vma)

    + 4

    + 8);

      put_arm_insn (globals, output_bfd,
      (bfd_vma) t2a3_b_insn | ((ret_offset >> 2) & 0x00FFFFFF),
      s->contents + my_offset + 4);
    }

  BFD_ASSERT (my_offset <= globals->thumb_glue_size);


  ret_offset =

    (s->output_section->vma + s->output_offset + my_offset)

    - (input_section->output_section->vma + input_section->output_offset
       + offset)

    - addend

    - 8;

  tmp = bfd_get_32 (input_bfd, hit_data
      - input_section->vma);

  bfd_put_32 (output_bfd,
       (bfd_vma) insert_thumb_branch (tmp, ret_offset),
       hit_data - input_section->vma);

  return TRUE;
}
