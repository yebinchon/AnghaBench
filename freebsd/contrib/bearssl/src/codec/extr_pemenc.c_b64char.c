
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static char
b64char(uint32_t x)
{







 uint32_t a, b, c;

 a = x - 26;
 b = x - 52;
 c = x - 62;
 return (char)(((x + 0x41) & ((a & b & c) >> 8))
  | ((x + (0x61 - 26)) & ((~a & b & c) >> 8))
  | ((x - (52 - 0x30)) & ((~a & ~b & c) >> 8))
  | ((0x2B + ((x & 1) << 2)) & (~(a | b | c) >> 8)));
}
