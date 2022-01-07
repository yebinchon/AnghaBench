
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int abfd; } ;
typedef TYPE_1__ common_header_type ;
typedef scalar_t__ bfd_size_type ;


 char* bfd_alloc (int ,scalar_t__) ;
 int bfd_get_string (TYPE_1__*,char*,size_t) ;
 size_t this_byte_and_next (TYPE_1__*) ;

__attribute__((used)) static char *
read_id (common_header_type *ieee)
{
  size_t length;
  char *string;

  length = this_byte_and_next (ieee);
  if (length <= 0x7f)

    ;

  else if (length == 0xde)

    length = this_byte_and_next (ieee);

  else if (length == 0xdf)
    {

      length = this_byte_and_next (ieee);
      length = (length * 256) + this_byte_and_next (ieee);
    }


  string = bfd_alloc (ieee->abfd, (bfd_size_type) length + 1);
  if (!string)
    return ((void*)0);
  bfd_get_string (ieee, string, length);
  string[length] = 0;
  return string;
}
