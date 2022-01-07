
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int MIPS16_INSTLEN ;
 unsigned short mips_fetch_instruction (scalar_t__) ;
 scalar_t__ skip_prologue_using_sal (scalar_t__) ;

__attribute__((used)) static CORE_ADDR
mips16_skip_prologue (CORE_ADDR pc)
{
  CORE_ADDR end_pc;
  int extend_bytes = 0;
  int prev_extend_bytes;


  static struct
  {
    unsigned short inst;
    unsigned short mask;
  }
  table[] =
  {
    {
    0x6300, 0xff00}
    ,
    {
    0xfb00, 0xff00}
    ,
    {
    0xd000, 0xf800}
    ,
    {
    0xf900, 0xff00}
    ,
    {
    0x6200, 0xff00}
    ,
    {
    0xfa00, 0xff00}
    ,
    {
    0x673d, 0xffff}
    ,
    {
    0xd980, 0xff80}
    ,
    {
    0x6704, 0xff1c}
    ,
    {
    0xe809, 0xf81f}
    ,
    {
    0x0100, 0xff00}
    ,
    {
    0, 0}
  };


  end_pc = skip_prologue_using_sal (pc);
  if (end_pc == 0)
    end_pc = pc + 100;




  for (; pc < end_pc; pc += MIPS16_INSTLEN)
    {
      unsigned short inst;
      int i;

      inst = mips_fetch_instruction (pc);





      if ((inst & 0xf800) == 0xf000)
 {
   extend_bytes = MIPS16_INSTLEN;
   continue;
 }
      prev_extend_bytes = extend_bytes;
      extend_bytes = 0;


      for (i = 0; table[i].mask != 0; i++)
 if ((inst & table[i].mask) == table[i].inst)
   break;
      if (table[i].mask != 0)
 continue;
      else

 {


   return pc - prev_extend_bytes;
 }
    }
  return pc;
}
