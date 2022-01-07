
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;



__attribute__((used)) static inline int is_mlocked_vma(struct vm_area_struct *v, struct page *p)
{
 return 0;
}
