
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;


 scalar_t__ BLR ;
 scalar_t__ STD_R0_0R1 ;
 int bfd_put_32 (int *,scalar_t__,int *) ;
 int * savefpr (int *,int *,int) ;

__attribute__((used)) static bfd_byte *
savefpr0_tail (bfd *abfd, bfd_byte *p, int r)
{
  p = savefpr (abfd, p, r);
  bfd_put_32 (abfd, STD_R0_0R1 + 16, p);
  p = p + 4;
  bfd_put_32 (abfd, BLR, p);
  return p + 4;
}
