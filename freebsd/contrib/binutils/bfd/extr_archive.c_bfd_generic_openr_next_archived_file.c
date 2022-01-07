
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int file_ptr ;
struct TYPE_10__ {int origin; scalar_t__ my_archive; } ;
typedef TYPE_1__ bfd ;
struct TYPE_11__ {int first_file_filepos; } ;


 TYPE_1__* _bfd_get_elt_at_filepos (TYPE_1__*,int) ;
 unsigned int arelt_size (TYPE_1__*) ;
 TYPE_5__* bfd_ardata (TYPE_1__*) ;

bfd *
bfd_generic_openr_next_archived_file (bfd *archive, bfd *last_file)
{
  file_ptr filestart;

  if (!last_file)
    filestart = bfd_ardata (archive)->first_file_filepos;
  else
    {
      unsigned int size = arelt_size (last_file);
      filestart = last_file->origin + size;
      if (archive->my_archive)
 filestart -= archive->origin;



      filestart += filestart % 2;
    }

  return _bfd_get_elt_at_filepos (archive, filestart);
}
