
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;


 int FALSE ;
 scalar_t__ IS_BR_CALL (int) ;
 scalar_t__ IS_BR_COND (int) ;
 int IS_NOP_B (int) ;
 int IS_NOP_F (int) ;
 int IS_NOP_I (int) ;
 int IS_NOP_M (int) ;
 int PREDICATE_BITS ;
 int TRUE ;
 int X4_SHIFT ;
 int abort () ;
 int bfd_getl64 (int *) ;
 int bfd_putl64 (int,int *) ;

__attribute__((used)) static bfd_boolean
elfNN_ia64_relax_br (bfd_byte *contents, bfd_vma off)
{
  unsigned int template, mlx;
  bfd_vma t0, t1, s0, s1, s2, br_code;
  long br_slot;
  bfd_byte *hit_addr;

  hit_addr = (bfd_byte *) (contents + off);
  br_slot = (long) hit_addr & 0x3;
  hit_addr -= br_slot;
  t0 = bfd_getl64 (hit_addr + 0);
  t1 = bfd_getl64 (hit_addr + 8);




  template = t0 & 0x1e;
  s0 = (t0 >> 5) & 0x1ffffffffffLL;
  s1 = ((t0 >> 46) | (t1 << 18)) & 0x1ffffffffffLL;
  s2 = (t1 >> 23) & 0x1ffffffffffLL;
  switch (br_slot)
    {
    case 0:


      if (!(IS_NOP_B (s1) && IS_NOP_B (s2)))
 return FALSE;
      br_code = s0;
      break;
    case 1:


      if (!((template == 0x12
      && IS_NOP_B (s2))
     || (template == 0x16
  && IS_NOP_B (s0)
  && IS_NOP_B (s2))))
 return FALSE;
      br_code = s1;
      break;
    case 2:


      if (!((template == 0x10
      && IS_NOP_I (s1))
     || (template == 0x12
  && IS_NOP_B (s1))
     || (template == 0x16
  && IS_NOP_B (s0)
  && IS_NOP_B (s1))
     || (template == 0x18
  && IS_NOP_M (s1))
     || (template == 0x1c
  && IS_NOP_F (s1))))
 return FALSE;
      br_code = s2;
      break;
    default:

      abort ();
    }


  if (!(IS_BR_COND (br_code) || IS_BR_CALL (br_code)))
    return FALSE;


  br_code |= 0x1LL << 40;



  if (t0 & 0x1)
    mlx = 0x5;
  else
    mlx = 0x4;

  if (template == 0x16)
    {


      if (br_slot == 0)
 t0 = 0LL;
      else
 t0 &= PREDICATE_BITS << 5;
      t0 |= 0x1LL << (X4_SHIFT + 5);
    }
  else
    {

      t0 &= 0x1ffffffffffLL << 5;
    }

  t0 |= mlx;


  t1 = br_code << 23;

  bfd_putl64 (t0, hit_addr);
  bfd_putl64 (t1, hit_addr + 8);
  return TRUE;
}
