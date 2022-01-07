
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint64_t ;


 char hex_digit (int) ;

__attribute__((used)) static void
write_num(char *line, int *len, uint64_t num, size_t sz, int *checksum)
{
 uint8_t b;

 for (; sz > 0; sz--) {
  b = (num >> ((sz - 1) * 8)) & 0xFF;
  line[*len] = hex_digit((b >> 4) & 0xF);
  line[*len + 1] = hex_digit(b & 0xF);
  *len += 2;
  if (checksum != ((void*)0))
   *checksum = (*checksum + b) & 0xFF;
 }
}
