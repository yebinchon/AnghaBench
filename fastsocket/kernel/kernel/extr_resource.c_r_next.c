
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct resource {void* child; void* sibling; struct resource* parent; } ;
typedef int loff_t ;



__attribute__((used)) static void *r_next(struct seq_file *m, void *v, loff_t *pos)
{
 struct resource *p = v;
 (*pos)++;
 if (p->child)
  return p->child;
 while (!p->sibling && p->parent)
  p = p->parent;
 return p->sibling;
}
