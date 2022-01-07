
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int B_TYPE ;


 scalar_t__ B_TST (int *,int) ;
 int printf_filtered (char*) ;
 int puts_filtered (char*) ;

__attribute__((used)) static void
print_bit_vector (B_TYPE *bits, int nbits)
{
  int bitno;

  for (bitno = 0; bitno < nbits; bitno++)
    {
      if ((bitno % 8) == 0)
 {
   puts_filtered (" ");
 }
      if (B_TST (bits, bitno))
 {
   printf_filtered ("1");
 }
      else
 {
   printf_filtered ("0");
 }
    }
}
