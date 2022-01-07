
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int reg ;
typedef scalar_t__ bfd_vma ;
struct TYPE_4__ {scalar_t__ size; int owner; } ;
typedef TYPE_1__ asection ;


 int bfd_get_section_contents (int ,TYPE_1__*,unsigned char*,scalar_t__,int) ;
 scalar_t__ is_branch (unsigned char*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int
find_function_stack_adjust (asection *sec, bfd_vma offset)
{
  int unrecog;
  int reg[128];

  memset (reg, 0, sizeof (reg));
  for (unrecog = 0; offset + 4 <= sec->size && unrecog < 32; offset += 4)
    {
      unsigned char buf[4];
      int rt, ra;
      int imm;


      if (!bfd_get_section_contents (sec->owner, sec, buf, offset, 4))
 break;

      if (buf[0] == 0x24 )
 continue;

      rt = buf[3] & 0x7f;
      ra = ((buf[2] & 0x3f) << 1) | (buf[3] >> 7);

      imm = (buf[1] << 9) | (buf[2] << 1) | (buf[3] >> 7);

      if (buf[0] == 0x1c )
 {
   imm >>= 7;
   imm = (imm ^ 0x200) - 0x200;
   reg[rt] = reg[ra] + imm;

   if (rt == 1 )
     {
       if (imm > 0)
  break;
       return reg[rt];
     }
 }
      else if (buf[0] == 0x18 && (buf[1] & 0xe0) == 0 )
 {
   int rb = ((buf[1] & 0x1f) << 2) | ((buf[2] & 0xc0) >> 6);

   reg[rt] = reg[ra] + reg[rb];
   if (rt == 1)
     return reg[rt];
 }
      else if ((buf[0] & 0xfc) == 0x40 )
 {
   if (buf[0] >= 0x42 )
     imm |= (buf[0] & 1) << 17;
   else
     {
       imm &= 0xffff;

       if (buf[0] == 0x40 )
  {
    if ((buf[1] & 0x80) == 0)
      goto unknown_insn;
    imm = (imm ^ 0x8000) - 0x8000;
  }
       else if ((buf[1] & 0x80) == 0 )
  imm <<= 16;
     }
   reg[rt] = imm;
   continue;
 }
      else if (buf[0] == 0x60 && (buf[1] & 0x80) != 0 )
 {
   reg[rt] |= imm & 0xffff;
   continue;
 }
      else if (buf[0] == 0x04 )
 {
   imm >>= 7;
   imm = (imm ^ 0x200) - 0x200;
   reg[rt] = reg[ra] | imm;
   continue;
 }
      else if ((buf[0] == 0x33 && imm == 1 )
        || (buf[0] == 0x08 && (buf[1] & 0xe0) == 0 ))
 {

   reg[rt] = 0;
   continue;
 }
      else if (is_branch (buf))

 break;
    unknown_insn:
      ++unrecog;
    }

  return 0;
}
