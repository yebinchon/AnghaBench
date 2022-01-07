
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef void rb_node ;
typedef int loff_t ;


 int down_read (int *) ;
 int nommu_region_sem ;
 int nommu_region_tree ;
 void* rb_first (int *) ;
 void* rb_next (void*) ;

__attribute__((used)) static void *nommu_region_list_start(struct seq_file *m, loff_t *_pos)
{
 struct rb_node *p;
 loff_t pos = *_pos;

 down_read(&nommu_region_sem);

 for (p = rb_first(&nommu_region_tree); p; p = rb_next(p))
  if (pos-- == 0)
   return p;
 return ((void*)0);
}
