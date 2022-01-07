
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_4__ {struct TYPE_4__* archive_head; } ;
typedef TYPE_1__ bfd ;


 int TRUE ;

bfd_boolean
bfd_set_archive_head (bfd *output_archive, bfd *new_head)
{
  output_archive->archive_head = new_head;
  return TRUE;
}
