
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct bfd_link_info {TYPE_2__* input_bfds; } ;
typedef int bfd_boolean ;
struct TYPE_14__ {struct TYPE_14__* link_next; } ;
typedef TYPE_2__ bfd ;
struct TYPE_15__ {scalar_t__ total_got_size; TYPE_2__* got_link_next; TYPE_1__* got; TYPE_2__* gotobj; } ;
struct TYPE_13__ {scalar_t__ size; } ;
struct TYPE_12__ {TYPE_2__* got_list; } ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 scalar_t__ MAX_GOT_SIZE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,TYPE_2__*,scalar_t__) ;
 TYPE_10__* alpha_elf_hash_table (struct bfd_link_info*) ;
 TYPE_8__* alpha_elf_tdata (TYPE_2__*) ;
 int elf64_alpha_calc_got_offsets (struct bfd_link_info*) ;
 scalar_t__ elf64_alpha_can_merge_gots (TYPE_2__*,TYPE_2__*) ;
 int elf64_alpha_merge_gots (TYPE_2__*,TYPE_2__*) ;
 int stub1 (int ,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static bfd_boolean
elf64_alpha_size_got_sections (struct bfd_link_info *info)
{
  bfd *i, *got_list, *cur_got_obj = ((void*)0);

  got_list = alpha_elf_hash_table (info)->got_list;



  if (got_list == ((void*)0))
    {
      for (i = info->input_bfds; i ; i = i->link_next)
 {
   bfd *this_got = alpha_elf_tdata (i)->gotobj;
   if (this_got == ((void*)0))
     continue;


   BFD_ASSERT (this_got == i);

          if (alpha_elf_tdata (this_got)->total_got_size > MAX_GOT_SIZE)
     {

       (*_bfd_error_handler)
         (_("%B: .got subsegment exceeds 64K (size %d)"),
          i, alpha_elf_tdata (this_got)->total_got_size);
       return FALSE;
     }

   if (got_list == ((void*)0))
     got_list = this_got;
   else
     alpha_elf_tdata(cur_got_obj)->got_link_next = this_got;
   cur_got_obj = this_got;
 }


      if (got_list == ((void*)0))
 return TRUE;

      alpha_elf_hash_table (info)->got_list = got_list;
    }

  cur_got_obj = got_list;
  i = alpha_elf_tdata(cur_got_obj)->got_link_next;
  while (i != ((void*)0))
    {
      if (elf64_alpha_can_merge_gots (cur_got_obj, i))
 {
   elf64_alpha_merge_gots (cur_got_obj, i);

   alpha_elf_tdata(i)->got->size = 0;
   i = alpha_elf_tdata(i)->got_link_next;
   alpha_elf_tdata(cur_got_obj)->got_link_next = i;
 }
      else
 {
   cur_got_obj = i;
   i = alpha_elf_tdata(i)->got_link_next;
 }
    }



  elf64_alpha_calc_got_offsets (info);

  return TRUE;
}
