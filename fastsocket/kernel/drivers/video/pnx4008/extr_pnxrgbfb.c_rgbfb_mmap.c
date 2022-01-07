
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct fb_info {int dummy; } ;


 int pnx4008_sdum_mmap (struct fb_info*,struct vm_area_struct*,int *) ;

__attribute__((used)) static int rgbfb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 return pnx4008_sdum_mmap(info, vma, ((void*)0));
}
