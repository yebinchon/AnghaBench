
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_4__ {scalar_t__ filename; } ;
typedef TYPE_1__ bfd ;


 int srec_write_record (TYPE_1__*,int ,int ,int *,int *) ;
 unsigned int strlen (scalar_t__) ;

__attribute__((used)) static bfd_boolean
srec_write_header (bfd *abfd)
{
  unsigned int len = strlen (abfd->filename);


  if (len > 40)
    len = 40;

  return srec_write_record (abfd, 0, (bfd_vma) 0,
       (bfd_byte *) abfd->filename,
       (bfd_byte *) abfd->filename + len);
}
