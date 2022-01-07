
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {void* private; } ;
typedef int loff_t ;


 int update_iter (void*,int ) ;

__attribute__((used)) static void *s_start(struct seq_file *m, loff_t *pos)
{
 if (!update_iter(m->private, *pos))
  return ((void*)0);
 return m->private;
}
