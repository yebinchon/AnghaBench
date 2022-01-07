
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_block {struct pending_block* next; } ;


 struct pending_block* pending_blocks ;
 int xfree (void*) ;

void
free_pending_blocks (void)
{
  pending_blocks = ((void*)0);
}
