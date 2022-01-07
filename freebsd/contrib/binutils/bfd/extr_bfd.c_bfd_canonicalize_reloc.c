
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sec_ptr ;
struct TYPE_5__ {scalar_t__ format; } ;
typedef TYPE_1__ bfd ;
typedef int asymbol ;
typedef int arelent ;


 long BFD_SEND (TYPE_1__*,int ,TYPE_1__*) ;
 int _bfd_canonicalize_reloc ;
 int bfd_error_invalid_operation ;
 scalar_t__ bfd_object ;
 int bfd_set_error (int ) ;

long
bfd_canonicalize_reloc (bfd *abfd,
   sec_ptr asect,
   arelent **location,
   asymbol **symbols)
{
  if (abfd->format != bfd_object)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return -1;
    }

  return BFD_SEND (abfd, _bfd_canonicalize_reloc,
     (abfd, asect, location, symbols));
}
