
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;



__attribute__((used)) static bfd_boolean
is_32bit_relative_branch (bfd_byte *contents, bfd_vma offset)
{




  return ((offset > 0
    && (contents [offset - 1] == 0xe8
        || contents [offset - 1] == 0xe9))
   || (offset > 1
       && contents [offset - 2] == 0x0f
       && (contents [offset - 1] & 0xf0) == 0x80));
}
