
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
typedef int loff_t ;


 int update_iter (int ,int ) ;

__attribute__((used)) static void *s_next(struct seq_file *m, void *p, loff_t *pos)
{
 (*pos)++;

 if (!update_iter(m->private, *pos))
  return ((void*)0);
 return p;
}
