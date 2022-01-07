
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int internal_srec_write_object_contents (int *,int ) ;

__attribute__((used)) static bfd_boolean
srec_write_object_contents (bfd *abfd)
{
  return internal_srec_write_object_contents (abfd, 0);
}
