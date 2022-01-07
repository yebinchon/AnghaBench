
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HIGHORDER ;
 int assert (int) ;

__attribute__((used)) static int diFindFree(u32 word, int start)
{
 int bitno;
 assert(start < 32);

 for (word <<= start, bitno = start; bitno < 32;
      bitno++, word <<= 1) {
  if ((word & HIGHORDER) == 0)
   break;
 }
 return (bitno);
}
