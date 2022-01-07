
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ TARGET_BYTE_ORDER ;

void
store_signed_integer (void *addr, int len, LONGEST val)
{
  unsigned char *p;
  unsigned char *startaddr = (unsigned char *) addr;
  unsigned char *endaddr = startaddr + len;



  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    {
      for (p = endaddr - 1; p >= startaddr; --p)
 {
   *p = val & 0xff;
   val >>= 8;
 }
    }
  else
    {
      for (p = startaddr; p < endaddr; ++p)
 {
   *p = val & 0xff;
   val >>= 8;
 }
    }
}
