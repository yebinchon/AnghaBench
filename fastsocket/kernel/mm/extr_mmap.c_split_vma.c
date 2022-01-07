
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {scalar_t__ map_count; } ;


 int ENOMEM ;
 int __split_vma (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ;
 scalar_t__ sysctl_max_map_count ;

int split_vma(struct mm_struct *mm, struct vm_area_struct *vma,
       unsigned long addr, int new_below)
{
 if (mm->map_count >= sysctl_max_map_count)
  return -ENOMEM;

 return __split_vma(mm, vma, addr, new_below);
}
