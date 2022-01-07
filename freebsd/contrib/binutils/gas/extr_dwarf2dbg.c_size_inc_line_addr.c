
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addressT ;


 int DWARF2_LINE_BASE ;
 scalar_t__ DWARF2_LINE_OPCODE_BASE ;
 unsigned int DWARF2_LINE_RANGE ;
 int INT_MAX ;
 int MAX_SPECIAL_ADDR_DELTA ;
 int scale_addr_delta (int*) ;
 int sizeof_leb128 (int,int) ;

__attribute__((used)) static int
size_inc_line_addr (int line_delta, addressT addr_delta)
{
  unsigned int tmp, opcode;
  int len = 0;


  scale_addr_delta (&addr_delta);




  if (line_delta == INT_MAX)
    {
      if (addr_delta == MAX_SPECIAL_ADDR_DELTA)
 len = 1;
      else
 len = 1 + sizeof_leb128 (addr_delta, 0);
      return len + 3;
    }


  tmp = line_delta - DWARF2_LINE_BASE;



  if (tmp >= DWARF2_LINE_RANGE)
    {
      len = 1 + sizeof_leb128 (line_delta, 1);
      line_delta = 0;
      tmp = 0 - DWARF2_LINE_BASE;
    }


  tmp += DWARF2_LINE_OPCODE_BASE;


  if (addr_delta < 256 + MAX_SPECIAL_ADDR_DELTA)
    {

      opcode = tmp + addr_delta * DWARF2_LINE_RANGE;
      if (opcode <= 255)
 return len + 1;


      opcode = tmp + (addr_delta - MAX_SPECIAL_ADDR_DELTA) * DWARF2_LINE_RANGE;
      if (opcode <= 255)
 return len + 2;
    }


  len += 1 + sizeof_leb128 (addr_delta, 0);


  len += 1;

  return len;
}
