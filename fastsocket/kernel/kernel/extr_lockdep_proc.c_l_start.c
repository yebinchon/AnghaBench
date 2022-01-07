
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int all_lock_classes ;
 void* seq_list_start_head (int *,int ) ;

__attribute__((used)) static void *l_start(struct seq_file *m, loff_t *pos)
{
 return seq_list_start_head(&all_lock_classes, *pos);
}
