
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;


 int bfd_getl64 (int *) ;
 int bfd_putl64 (int,int *) ;

__attribute__((used)) static void
elfNN_ia64_relax_brl (bfd_byte *contents, bfd_vma off)
{
  int template;
  bfd_byte *hit_addr;
  bfd_vma t0, t1, i0, i1, i2;

  hit_addr = (bfd_byte *) (contents + off);
  hit_addr -= (long) hit_addr & 0x3;
  t0 = bfd_getl64 (hit_addr);
  t1 = bfd_getl64 (hit_addr + 8);


  i0 = (t0 >> 5) & 0x1ffffffffffLL;

  i1 = 0x4000000000LL;

  i2 = (t1 >> 23) & 0x0ffffffffffLL;



  if (t0 & 0x1)
    template = 0x13;
  else
    template = 0x12;
  t0 = (i1 << 46) | (i0 << 5) | template;
  t1 = (i2 << 23) | (i1 >> 18);

  bfd_putl64 (t0, hit_addr);
  bfd_putl64 (t1, hit_addr + 8);
}
