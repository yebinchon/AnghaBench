
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_block {struct pending_block* next; struct block* block; } ;
struct objfile {int objfile_obstack; } ;
struct block {int dummy; } ;


 scalar_t__ obstack_alloc (int *,int) ;
 struct pending_block* pending_blocks ;

void
record_pending_block (struct objfile *objfile, struct block *block,
        struct pending_block *opblock)
{
  struct pending_block *pblock;

  pblock = (struct pending_block *)
    obstack_alloc (&objfile->objfile_obstack, sizeof (struct pending_block));
  pblock->block = block;
  if (opblock)
    {
      pblock->next = opblock->next;
      opblock->next = pblock;
    }
  else
    {
      pblock->next = pending_blocks;
      pending_blocks = pblock;
    }
}
