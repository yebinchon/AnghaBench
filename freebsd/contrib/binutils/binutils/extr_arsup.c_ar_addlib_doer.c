
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* archive_next; } ;
typedef TYPE_1__ bfd ;
struct TYPE_6__ {TYPE_1__* archive_head; } ;


 TYPE_2__* obfd ;

__attribute__((used)) static void
ar_addlib_doer (bfd *abfd, bfd *prev)
{

  if (prev != ((void*)0))
    prev->archive_next = abfd->archive_next;

  abfd->archive_next = obfd->archive_head;
  obfd->archive_head = abfd;
}
