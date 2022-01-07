
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ offsetT ;
typedef int addressT ;


 int DWARF2_LINE_BASE ;
 scalar_t__ DWARF2_LINE_OPCODE_BASE ;
 unsigned int DWARF2_LINE_RANGE ;
 int DW_LNE_end_sequence ;
 int DW_LNS_advance_line ;
 void* DW_LNS_advance_pc ;
 void* DW_LNS_const_add_pc ;
 void* DW_LNS_copy ;
 int DW_LNS_extended_op ;
 int INT_MAX ;
 int MAX_SPECIAL_ADDR_DELTA ;
 int assert (int) ;
 int output_leb128 (char*,int,int) ;
 int scale_addr_delta (int*) ;

__attribute__((used)) static void
emit_inc_line_addr (int line_delta, addressT addr_delta, char *p, int len)
{
  unsigned int tmp, opcode;
  int need_copy = 0;
  char *end = p + len;



  assert ((offsetT) addr_delta >= 0);


  scale_addr_delta (&addr_delta);




  if (line_delta == INT_MAX)
    {
      if (addr_delta == MAX_SPECIAL_ADDR_DELTA)
 *p++ = DW_LNS_const_add_pc;
      else
 {
   *p++ = DW_LNS_advance_pc;
   p += output_leb128 (p, addr_delta, 0);
 }

      *p++ = DW_LNS_extended_op;
      *p++ = 1;
      *p++ = DW_LNE_end_sequence;
      goto done;
    }


  tmp = line_delta - DWARF2_LINE_BASE;



  if (tmp >= DWARF2_LINE_RANGE)
    {
      *p++ = DW_LNS_advance_line;
      p += output_leb128 (p, line_delta, 1);

      line_delta = 0;
      tmp = 0 - DWARF2_LINE_BASE;
      need_copy = 1;
    }



  if (line_delta == 0 && addr_delta == 0)
    {
      *p++ = DW_LNS_copy;
      goto done;
    }


  tmp += DWARF2_LINE_OPCODE_BASE;


  if (addr_delta < 256 + MAX_SPECIAL_ADDR_DELTA)
    {

      opcode = tmp + addr_delta * DWARF2_LINE_RANGE;
      if (opcode <= 255)
 {
   *p++ = opcode;
   goto done;
 }


      opcode = tmp + (addr_delta - MAX_SPECIAL_ADDR_DELTA) * DWARF2_LINE_RANGE;
      if (opcode <= 255)
 {
   *p++ = DW_LNS_const_add_pc;
   *p++ = opcode;
   goto done;
 }
    }


  *p++ = DW_LNS_advance_pc;
  p += output_leb128 (p, addr_delta, 0);

  if (need_copy)
    *p++ = DW_LNS_copy;
  else
    *p++ = tmp;

 done:
  assert (p == end);
}
