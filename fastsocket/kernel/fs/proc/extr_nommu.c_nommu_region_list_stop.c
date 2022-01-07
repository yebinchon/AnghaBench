
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int nommu_region_sem ;
 int up_read (int *) ;

__attribute__((used)) static void nommu_region_list_stop(struct seq_file *m, void *v)
{
 up_read(&nommu_region_sem);
}
