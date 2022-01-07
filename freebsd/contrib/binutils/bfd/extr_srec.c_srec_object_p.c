
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int file_ptr ;
typedef int bfd_target ;
typedef int bfd_size_type ;
typedef char bfd_byte ;
struct TYPE_9__ {void* any; } ;
struct TYPE_10__ {scalar_t__ symcount; int const* xvec; int flags; TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;


 int HAS_SYMS ;
 int ISHEX (char) ;
 int SEEK_SET ;
 int bfd_bread (char*,int ,TYPE_2__*) ;
 int bfd_error_wrong_format ;
 int bfd_release (TYPE_2__*,void*) ;
 scalar_t__ bfd_seek (TYPE_2__*,int ,int ) ;
 int bfd_set_error (int ) ;
 int srec_init () ;
 int srec_mkobject (TYPE_2__*) ;
 int srec_scan (TYPE_2__*) ;

__attribute__((used)) static const bfd_target *
srec_object_p (bfd *abfd)
{
  void * tdata_save;
  bfd_byte b[4];

  srec_init ();

  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0
      || bfd_bread (b, (bfd_size_type) 4, abfd) != 4)
    return ((void*)0);

  if (b[0] != 'S' || !ISHEX (b[1]) || !ISHEX (b[2]) || !ISHEX (b[3]))
    {
      bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }

  tdata_save = abfd->tdata.any;
  if (! srec_mkobject (abfd) || ! srec_scan (abfd))
    {
      if (abfd->tdata.any != tdata_save && abfd->tdata.any != ((void*)0))
 bfd_release (abfd, abfd->tdata.any);
      abfd->tdata.any = tdata_save;
      return ((void*)0);
    }

  if (abfd->symcount > 0)
    abfd->flags |= HAS_SYMS;

  return abfd->xvec;
}
