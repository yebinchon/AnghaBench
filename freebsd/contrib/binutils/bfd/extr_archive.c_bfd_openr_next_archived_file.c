
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ direction; } ;
typedef TYPE_1__ bfd ;


 TYPE_1__* BFD_SEND (TYPE_1__*,int ,TYPE_1__*) ;
 scalar_t__ bfd_archive ;
 int bfd_error_invalid_operation ;
 scalar_t__ bfd_get_format (TYPE_1__*) ;
 int bfd_set_error (int ) ;
 int openr_next_archived_file ;
 scalar_t__ write_direction ;

bfd *
bfd_openr_next_archived_file (bfd *archive, bfd *last_file)
{
  if ((bfd_get_format (archive) != bfd_archive) ||
      (archive->direction == write_direction))
    {
      bfd_set_error (bfd_error_invalid_operation);
      return ((void*)0);
    }

  return BFD_SEND (archive,
     openr_next_archived_file, (archive, last_file));
}
