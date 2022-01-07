
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int HOST_CHAR_BIT ;
 int gdb_assert (int) ;
 int strlen (char*) ;

__attribute__((used)) static char *
read_string (bfd *abfd, char *buf, unsigned int *bytes_read_ptr)
{



  gdb_assert (HOST_CHAR_BIT == 8);
  if (*buf == '\0')
    {
      *bytes_read_ptr = 1;
      return ((void*)0);
    }
  *bytes_read_ptr = strlen (buf) + 1;
  return buf;
}
