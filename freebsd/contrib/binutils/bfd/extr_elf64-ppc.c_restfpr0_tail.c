
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;


 scalar_t__ BLR ;
 scalar_t__ LD_R0_0R1 ;
 scalar_t__ MTLR_R0 ;
 int bfd_put_32 (int *,scalar_t__,int *) ;
 int * restfpr (int *,int *,int) ;

__attribute__((used)) static bfd_byte *
restfpr0_tail (bfd *abfd, bfd_byte *p, int r)
{
  bfd_put_32 (abfd, LD_R0_0R1 + 16, p);
  p = p + 4;
  p = restfpr (abfd, p, r);
  bfd_put_32 (abfd, MTLR_R0, p);
  p = p + 4;
  if (r == 29)
    {
      p = restfpr (abfd, p, 30);
      p = restfpr (abfd, p, 31);
    }
  bfd_put_32 (abfd, BLR, p);
  return p + 4;
}
