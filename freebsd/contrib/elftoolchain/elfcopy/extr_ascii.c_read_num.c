
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int hex_value (char const) ;
 int ishexdigit (char const) ;

__attribute__((used)) static int
read_num(const char *line, int *len, uint64_t *num, size_t sz, int *checksum)
{
 uint8_t b;

 *num = 0;
 for (; sz > 0; sz--) {
  if (!ishexdigit(line[*len]) || !ishexdigit(line[*len + 1]))
   return (-1);
  b = (hex_value(line[*len]) << 4) | hex_value(line[*len + 1]);
  *num = (*num << 8) | b;
  *len += 2;
  if (checksum != ((void*)0))
   *checksum = (*checksum + b) & 0xFF;
 }

 return (0);
}
