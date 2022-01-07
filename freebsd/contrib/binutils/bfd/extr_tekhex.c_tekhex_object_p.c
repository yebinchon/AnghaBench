
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int file_ptr ;
typedef int bfd_target ;
typedef int bfd_size_type ;
struct TYPE_7__ {int const* xvec; } ;
typedef TYPE_1__ bfd ;


 int ISHEX (char) ;
 int SEEK_SET ;
 int bfd_bread (char*,int ,TYPE_1__*) ;
 scalar_t__ bfd_seek (TYPE_1__*,int ,int ) ;
 int first_phase ;
 int pass_over (TYPE_1__*,int ) ;
 int tekhex_init () ;
 int tekhex_mkobject (TYPE_1__*) ;

__attribute__((used)) static const bfd_target *
tekhex_object_p (bfd *abfd)
{
  char b[4];

  tekhex_init ();

  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0
      || bfd_bread (b, (bfd_size_type) 4, abfd) != 4)
    return ((void*)0);

  if (b[0] != '%' || !ISHEX (b[1]) || !ISHEX (b[2]) || !ISHEX (b[3]))
    return ((void*)0);

  tekhex_mkobject (abfd);

  if (!pass_over (abfd, first_phase))
    return ((void*)0);

  return abfd->xvec;
}
