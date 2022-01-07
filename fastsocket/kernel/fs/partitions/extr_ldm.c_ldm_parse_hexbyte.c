
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



__attribute__((used)) static int ldm_parse_hexbyte (const u8 *src)
{
 unsigned int x;
 int h;


 if ((x = src[0] - '0') <= '9'-'0') h = x;
 else if ((x = src[0] - 'a') <= 'f'-'a') h = x+10;
 else if ((x = src[0] - 'A') <= 'F'-'A') h = x+10;
 else return -1;
 h <<= 4;


 if ((x = src[1] - '0') <= '9'-'0') return h | x;
 if ((x = src[1] - 'a') <= 'f'-'a') return h | (x+10);
 if ((x = src[1] - 'A') <= 'F'-'A') return h | (x+10);
 return -1;
}
