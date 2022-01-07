
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_ADDR_BIT ;
 int TARGET_CHAR_BIT ;
 int error (char*) ;
 int extract_unsigned_integer (unsigned char*,int) ;

CORE_ADDR
dwarf2_read_address (unsigned char *buf, unsigned char *buf_end, int *bytes_read)
{
  CORE_ADDR result;

  if (buf_end - buf < TARGET_ADDR_BIT / TARGET_CHAR_BIT)
    error ("dwarf2_read_address: Corrupted DWARF expression.");

  *bytes_read = TARGET_ADDR_BIT / TARGET_CHAR_BIT;


  result = extract_unsigned_integer (buf, TARGET_ADDR_BIT / TARGET_CHAR_BIT);
  return result;
}
