
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;


 scalar_t__ LI_R12_0 ;
 scalar_t__ LVX_VR0_R12_R0 ;
 int bfd_put_32 (int *,scalar_t__,int *) ;

__attribute__((used)) static bfd_byte *
restvr (bfd *abfd, bfd_byte *p, int r)
{
  bfd_put_32 (abfd, LI_R12_0 + (1 << 16) - (32 - r) * 16, p);
  p = p + 4;
  bfd_put_32 (abfd, LVX_VR0_R12_R0 + (r << 21), p);
  return p + 4;
}
