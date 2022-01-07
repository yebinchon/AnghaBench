
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_inst ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ MIPS_INSTLEN ;
 int mips_fetch_instruction (scalar_t__) ;
 scalar_t__ skip_prologue_using_sal (scalar_t__) ;

__attribute__((used)) static CORE_ADDR
mips32_skip_prologue (CORE_ADDR pc)
{
  t_inst inst;
  CORE_ADDR end_pc;
  int seen_sp_adjust = 0;
  int load_immediate_bytes = 0;


  end_pc = skip_prologue_using_sal (pc);
  if (end_pc == 0)
    end_pc = pc + 100;




  for (; pc < end_pc; pc += MIPS_INSTLEN)
    {
      unsigned long high_word;

      inst = mips_fetch_instruction (pc);
      high_word = (inst >> 16) & 0xffff;

      if (high_word == 0x27bd
   || high_word == 0x67bd)
 seen_sp_adjust = 1;
      else if (inst == 0x03a1e823 ||
        inst == 0x03a8e823)
 seen_sp_adjust = 1;
      else if (((inst & 0xFFE00000) == 0xAFA00000
  || (inst & 0xFFE00000) == 0xFFA00000)
        && (inst & 0x001F0000))
 continue;

      else if ((inst & 0xFFE00000) == 0xE7A00000)
 continue;
      else if ((inst & 0xF3E00000) == 0xA3C00000 && (inst & 0x001F0000))

 continue;




      else if (inst == 0x03A0F021 || inst == 0x03a0f025 || inst == 0x03a0f02d)
 continue;

      else if ((inst & 0xFF9F07FF) == 0x00800021)
 continue;
      else if (high_word == 0x3c1c)
 continue;
      else if (high_word == 0x279c)
 continue;
      else if (inst == 0x0399e021
        || inst == 0x033ce021)
 continue;





      else if (!seen_sp_adjust)
 {
   if (high_word == 0x3c01 ||
       high_word == 0x3c08)
     {
       load_immediate_bytes += MIPS_INSTLEN;
       continue;
     }
   else if (high_word == 0x3421 ||
     high_word == 0x3508 ||
     high_word == 0x3401 ||
     high_word == 0x3408)
     {
       load_immediate_bytes += MIPS_INSTLEN;
       continue;
     }
   else
     break;
 }
      else
 break;
    }




  if (load_immediate_bytes && !seen_sp_adjust)
    pc -= load_immediate_bytes;
  return pc;
}
