
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;


 int DBGE (char*,struct file*,struct vm_area_struct*) ;
 int ENODEV ;

__attribute__((used)) static int vwsnd_audio_mmap(struct file *file, struct vm_area_struct *vma)
{
 DBGE("(file=0x%p, vma=0x%p)\n", file, vma);
 return -ENODEV;
}
