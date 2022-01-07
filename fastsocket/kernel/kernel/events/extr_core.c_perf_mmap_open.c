
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct perf_event {int mmap_count; } ;
struct TYPE_2__ {struct perf_event* private_data; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void perf_mmap_open(struct vm_area_struct *vma)
{
 struct perf_event *event = vma->vm_file->private_data;

 atomic_inc(&event->mmap_count);
}
