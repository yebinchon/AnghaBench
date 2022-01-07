
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 int _ (char*) ;
 int first_error (int ) ;

__attribute__((used)) static int
neon_cmode_for_logic_imm (unsigned immediate, unsigned *immbits, int size)
{

  if (size == 8)
    {



      immediate |= immediate << 8;
      size = 16;
    }

  if (size >= 32)
    {
      if (immediate == (immediate & 0x000000ff))
 {
   *immbits = immediate;
   return 0x1;
 }
      else if (immediate == (immediate & 0x0000ff00))
 {
   *immbits = immediate >> 8;
   return 0x3;
 }
      else if (immediate == (immediate & 0x00ff0000))
 {
   *immbits = immediate >> 16;
   return 0x5;
 }
      else if (immediate == (immediate & 0xff000000))
 {
   *immbits = immediate >> 24;
   return 0x7;
 }
      if ((immediate & 0xffff) != (immediate >> 16))
 goto bad_immediate;
      immediate &= 0xffff;
    }

  if (immediate == (immediate & 0x000000ff))
    {
      *immbits = immediate;
      return 0x9;
    }
  else if (immediate == (immediate & 0x0000ff00))
    {
      *immbits = immediate >> 8;
      return 0xb;
    }

  bad_immediate:
  first_error (_("immediate value out of range"));
  return FAIL;
}
