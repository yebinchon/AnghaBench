
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct objalloc {int dummy; } ;
struct TYPE_3__ {scalar_t__ memory; } ;
typedef TYPE_1__ bfd ;


 int objalloc_free_block (struct objalloc*,void*) ;

void
bfd_release (bfd *abfd, void *block)
{
  objalloc_free_block ((struct objalloc *) abfd->memory, block);
}
