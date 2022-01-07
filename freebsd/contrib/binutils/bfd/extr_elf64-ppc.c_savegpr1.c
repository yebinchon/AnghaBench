
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;


 scalar_t__ STD_R0_0R12 ;
 int bfd_put_32 (int *,scalar_t__,int *) ;

__attribute__((used)) static bfd_byte *
savegpr1 (bfd *abfd, bfd_byte *p, int r)
{
  bfd_put_32 (abfd, STD_R0_0R12 + (r << 21) + (1 << 16) - (32 - r) * 8, p);
  return p + 4;
}
