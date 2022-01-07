
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct areltdata {int filename; struct areltdata* arelt_data; scalar_t__ origin; struct areltdata* my_archive; } ;
typedef int file_ptr ;
typedef struct areltdata bfd ;


 int SEEK_SET ;
 scalar_t__ _bfd_add_bfd_to_archive_cache (struct areltdata*,int ,struct areltdata*) ;
 struct areltdata* _bfd_create_empty_archive_element_shell (struct areltdata*) ;
 struct areltdata* _bfd_look_for_bfd_in_cache (struct areltdata*,int ) ;
 struct areltdata* _bfd_read_ar_hdr (struct areltdata*) ;
 int bfd_release (struct areltdata*,struct areltdata*) ;
 scalar_t__ bfd_seek (struct areltdata*,int ,int ) ;
 scalar_t__ bfd_tell (struct areltdata*) ;

bfd *
_bfd_get_elt_at_filepos (bfd *archive, file_ptr filepos)
{
  struct areltdata *new_areldata;
  bfd *n_nfd;

  if (archive->my_archive)
    {
      filepos += archive->origin;
      archive = archive->my_archive;
    }

  n_nfd = _bfd_look_for_bfd_in_cache (archive, filepos);
  if (n_nfd)
    return n_nfd;

  if (0 > bfd_seek (archive, filepos, SEEK_SET))
    return ((void*)0);

  if ((new_areldata = _bfd_read_ar_hdr (archive)) == ((void*)0))
    return ((void*)0);

  n_nfd = _bfd_create_empty_archive_element_shell (archive);
  if (n_nfd == ((void*)0))
    {
      bfd_release (archive, new_areldata);
      return ((void*)0);
    }

  n_nfd->origin = bfd_tell (archive);
  n_nfd->arelt_data = new_areldata;
  n_nfd->filename = new_areldata->filename;

  if (_bfd_add_bfd_to_archive_cache (archive, filepos, n_nfd))
    return n_nfd;


  bfd_release (archive, n_nfd);
  bfd_release (archive, new_areldata);
  return ((void*)0);
}
