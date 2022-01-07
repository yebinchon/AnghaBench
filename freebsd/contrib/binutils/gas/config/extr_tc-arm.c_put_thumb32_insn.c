
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THUMB_SIZE ;
 int md_number_to_chars (char*,unsigned long,int) ;

__attribute__((used)) static void
put_thumb32_insn (char * buf, unsigned long insn)
{
  md_number_to_chars (buf, insn >> 16, THUMB_SIZE);
  md_number_to_chars (buf + THUMB_SIZE, insn, THUMB_SIZE);
}
