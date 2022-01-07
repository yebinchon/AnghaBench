
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THUMB_SIZE ;
 unsigned long md_chars_to_number (char*,int) ;

__attribute__((used)) static unsigned long
get_thumb32_insn (char * buf)
{
  unsigned long insn;
  insn = md_chars_to_number (buf, THUMB_SIZE) << 16;
  insn |= md_chars_to_number (buf + THUMB_SIZE, THUMB_SIZE);

  return insn;
}
