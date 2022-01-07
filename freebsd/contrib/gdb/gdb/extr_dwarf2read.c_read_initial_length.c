
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comp_unit_head {int initial_length_size; int offset_size; } ;
typedef int bfd_byte ;
typedef int bfd ;
typedef int LONGEST ;


 int bfd_get_32 (int *,int *) ;
 int bfd_get_64 (int *,int *) ;

__attribute__((used)) static LONGEST
read_initial_length (bfd *abfd, char *buf, struct comp_unit_head *cu_header,
                     int *bytes_read)
{
  LONGEST retval = 0;

  retval = bfd_get_32 (abfd, (bfd_byte *) buf);

  if (retval == 0xffffffff)
    {
      retval = bfd_get_64 (abfd, (bfd_byte *) buf + 4);
      *bytes_read = 12;
      if (cu_header != ((void*)0))
 {
   cu_header->initial_length_size = 12;
   cu_header->offset_size = 8;
 }
    }
  else if (retval == 0)
    {


      retval = bfd_get_64 (abfd, (bfd_byte *) buf);
      *bytes_read = 8;
      if (cu_header != ((void*)0))
 {
   cu_header->initial_length_size = 8;
   cu_header->offset_size = 8;
 }
    }
  else
    {
      *bytes_read = 4;
      if (cu_header != ((void*)0))
 {
   cu_header->initial_length_size = 4;
   cu_header->offset_size = 4;
 }
    }

 return retval;
}
