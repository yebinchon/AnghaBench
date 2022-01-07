
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
struct TYPE_10__ {int const* xvec; TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;


 unsigned int HEX2 (char*) ;
 int ISHEX (char) ;
 int SEEK_SET ;
 int bfd_bread (char*,int ,TYPE_2__*) ;
 scalar_t__ bfd_error_file_truncated ;
 int bfd_error_wrong_format ;
 scalar_t__ bfd_get_error () ;
 int bfd_release (TYPE_2__*,void*) ;
 scalar_t__ bfd_seek (TYPE_2__*,int ,int ) ;
 int bfd_set_error (int ) ;
 int ihex_init () ;
 int ihex_mkobject (TYPE_2__*) ;
 int ihex_scan (TYPE_2__*) ;

__attribute__((used)) static const bfd_target *
ihex_object_p (bfd *abfd)
{
  void * tdata_save;
  bfd_byte b[9];
  unsigned int i;
  unsigned int type;

  ihex_init ();

  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0)
    return ((void*)0);
  if (bfd_bread (b, (bfd_size_type) 9, abfd) != 9)
    {
      if (bfd_get_error () == bfd_error_file_truncated)
 bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }

  if (b[0] != ':')
    {
      bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }

  for (i = 1; i < 9; i++)
    {
      if (! ISHEX (b[i]))
 {
   bfd_set_error (bfd_error_wrong_format);
   return ((void*)0);
 }
    }

  type = HEX2 (b + 7);
  if (type > 5)
    {
      bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }


  tdata_save = abfd->tdata.any;
  if (! ihex_mkobject (abfd) || ! ihex_scan (abfd))
    {
      if (abfd->tdata.any != tdata_save && abfd->tdata.any != ((void*)0))
 bfd_release (abfd, abfd->tdata.any);
      abfd->tdata.any = tdata_save;
      return ((void*)0);
    }

  return abfd->xvec;
}
