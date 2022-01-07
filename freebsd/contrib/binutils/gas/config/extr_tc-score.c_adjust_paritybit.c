
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum insn_class { ____Placeholder_insn_class } insn_class ;


 int INSN_CLASS_16 ;
 int INSN_CLASS_32 ;
 int INSN_CLASS_PCE ;
 int INSN_CLASS_SYN ;
 int abort () ;

__attribute__((used)) static unsigned long
adjust_paritybit (unsigned long m_code, enum insn_class class)
{
  unsigned long result = 0;
  unsigned long m_code_high = 0;
  unsigned long m_code_low = 0;
  unsigned long pb_high = 0;
  unsigned long pb_low = 0;

  if (class == INSN_CLASS_32)
    {
      pb_high = 0x80000000;
      pb_low = 0x00008000;
    }
  else if (class == INSN_CLASS_16)
    {
      pb_high = 0;
      pb_low = 0;
    }
  else if (class == INSN_CLASS_PCE)
    {
      pb_high = 0;
      pb_low = 0x00008000;
    }
  else if (class == INSN_CLASS_SYN)
    {


      pb_high = 0x80000000;
      pb_low = 0x00008000;
    }
  else
    {
      abort ();
    }

  m_code_high = m_code & 0x3fff8000;
  m_code_low = m_code & 0x00007fff;
  result = pb_high | (m_code_high << 1) | pb_low | m_code_low;
  return result;

}
