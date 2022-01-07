
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change {struct change* link; void* deleted; void* inserted; void* line1; void* line0; } ;
typedef void* lin ;


 struct change* xmalloc (int) ;

__attribute__((used)) static struct change *
add_change (lin line0, lin line1, lin deleted, lin inserted,
     struct change *old)
{
  struct change *new = xmalloc (sizeof *new);

  new->line0 = line0;
  new->line1 = line1;
  new->inserted = inserted;
  new->deleted = deleted;
  new->link = old;
  return new;
}
