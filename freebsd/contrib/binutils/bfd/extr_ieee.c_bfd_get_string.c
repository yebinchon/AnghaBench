
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int common_header_type ;


 char this_byte_and_next (int *) ;

__attribute__((used)) static void
bfd_get_string (common_header_type *ieee, char *string, size_t length)
{
  size_t i;

  for (i = 0; i < length; i++)
    string[i] = this_byte_and_next (ieee);
}
