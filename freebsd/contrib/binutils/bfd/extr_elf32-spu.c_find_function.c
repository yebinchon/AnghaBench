
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_elf_stack_info {int num_fun; struct function_info* fun; } ;
struct function_info {scalar_t__ lo; scalar_t__ hi; } ;
struct bfd_link_info {TYPE_1__* callbacks; } ;
struct _spu_elf_section_data {struct spu_elf_stack_info* stack_info; } ;
typedef scalar_t__ bfd_vma ;
typedef int asection ;
struct TYPE_2__ {int (* einfo ) (int ,int *,scalar_t__) ;} ;


 int _ (char*) ;
 struct _spu_elf_section_data* spu_elf_section_data (int *) ;
 int stub1 (int ,int *,scalar_t__) ;

__attribute__((used)) static struct function_info *
find_function (asection *sec, bfd_vma offset, struct bfd_link_info *info)
{
  struct _spu_elf_section_data *sec_data = spu_elf_section_data (sec);
  struct spu_elf_stack_info *sinfo = sec_data->stack_info;
  int lo, hi, mid;

  lo = 0;
  hi = sinfo->num_fun;
  while (lo < hi)
    {
      mid = (lo + hi) / 2;
      if (offset < sinfo->fun[mid].lo)
 hi = mid;
      else if (offset >= sinfo->fun[mid].hi)
 lo = mid + 1;
      else
 return &sinfo->fun[mid];
    }
  info->callbacks->einfo (_("%A:0x%v not found in function table\n"),
     sec, offset);
  return ((void*)0);
}
