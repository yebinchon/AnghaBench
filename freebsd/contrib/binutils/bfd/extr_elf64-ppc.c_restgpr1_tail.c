
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;


 int BLR ;
 int bfd_put_32 (int *,int ,int *) ;
 int * restgpr1 (int *,int *,int) ;

__attribute__((used)) static bfd_byte *
restgpr1_tail (bfd *abfd, bfd_byte *p, int r)
{
  p = restgpr1 (abfd, p, r);
  bfd_put_32 (abfd, BLR, p);
  return p + 4;
}
