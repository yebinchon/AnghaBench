
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int value; } ;
struct TYPE_10__ {TYPE_1__ def; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_3__ root; } ;
struct TYPE_12__ {scalar_t__ is_relocatable_executable; } ;
struct elf32_arm_link_hash_table {int arm_glue_size; scalar_t__ use_blx; scalar_t__ pic_veneer; TYPE_4__ root; int * bfd_of_glue_owner; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_14__ {int output_offset; scalar_t__ contents; TYPE_5__* output_section; int * owner; } ;
typedef TYPE_6__ asection ;
struct TYPE_13__ {int vma; } ;


 int BFD_ASSERT (int) ;
 int INTERWORK_FLAG (int *) ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,int *,char const*) ;
 scalar_t__ a2t1_ldr_insn ;
 scalar_t__ a2t1p_ldr_insn ;
 scalar_t__ a2t1v5_ldr_insn ;
 scalar_t__ a2t2_bx_r12_insn ;
 scalar_t__ a2t2p_add_pc_insn ;
 int a2t2v5_func_addr_insn ;
 int a2t3_func_addr_insn ;
 scalar_t__ a2t3p_bx_r12_insn ;
 int bfd_put_32 (int *,int,scalar_t__) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 struct elf_link_hash_entry* find_arm_glue (struct bfd_link_info*,char const*,char**) ;
 int put_arm_insn (struct elf32_arm_link_hash_table*,int *,int,scalar_t__) ;
 int stub1 (int ,int *,int *,char const*) ;

__attribute__((used)) static struct elf_link_hash_entry *
elf32_arm_create_thumb_stub (struct bfd_link_info * info,
        const char * name,
        bfd * input_bfd,
        bfd * output_bfd,
        asection * sym_sec,
        bfd_vma val,
        asection *s,
        char **error_message)
{
  bfd_vma my_offset;
  long int ret_offset;
  struct elf_link_hash_entry * myh;
  struct elf32_arm_link_hash_table * globals;

  myh = find_arm_glue (info, name, error_message);
  if (myh == ((void*)0))
    return ((void*)0);

  globals = elf32_arm_hash_table (info);

  BFD_ASSERT (globals != ((void*)0));
  BFD_ASSERT (globals->bfd_of_glue_owner != ((void*)0));

  my_offset = myh->root.u.def.value;

  if ((my_offset & 0x01) == 0x01)
    {
      if (sym_sec != ((void*)0)
   && sym_sec->owner != ((void*)0)
   && !INTERWORK_FLAG (sym_sec->owner))
 {
   (*_bfd_error_handler)
     (_("%B(%s): warning: interworking not enabled.\n"
        "  first occurrence: %B: arm call to thumb"),
      sym_sec->owner, input_bfd, name);
 }

      --my_offset;
      myh->root.u.def.value = my_offset;

      if (info->shared || globals->root.is_relocatable_executable
   || globals->pic_veneer)
 {




   put_arm_insn (globals, output_bfd, (bfd_vma) a2t1p_ldr_insn,
   s->contents + my_offset);
   put_arm_insn (globals, output_bfd, (bfd_vma) a2t2p_add_pc_insn,
   s->contents + my_offset + 4);
   put_arm_insn (globals, output_bfd, (bfd_vma) a2t3p_bx_r12_insn,
   s->contents + my_offset + 8);


   ret_offset = (val - (s->output_offset
          + s->output_section->vma
          + my_offset + 12))
         | 1;
   bfd_put_32 (output_bfd, ret_offset,
        s->contents + my_offset + 12);
 }
      else if (globals->use_blx)
 {
   put_arm_insn (globals, output_bfd, (bfd_vma) a2t1v5_ldr_insn,
   s->contents + my_offset);


   bfd_put_32 (output_bfd, val | a2t2v5_func_addr_insn,
        s->contents + my_offset + 4);
 }
      else
 {
   put_arm_insn (globals, output_bfd, (bfd_vma) a2t1_ldr_insn,
   s->contents + my_offset);

   put_arm_insn (globals, output_bfd, (bfd_vma) a2t2_bx_r12_insn,
   s->contents + my_offset + 4);


   bfd_put_32 (output_bfd, val | a2t3_func_addr_insn,
        s->contents + my_offset + 8);
 }
    }

  BFD_ASSERT (my_offset <= globals->arm_glue_size);

  return myh;
}
