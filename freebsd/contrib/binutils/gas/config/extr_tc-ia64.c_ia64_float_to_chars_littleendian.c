
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LITTLENUM_TYPE ;


 int number_to_chars_littleendian (char*,long,int) ;

__attribute__((used)) static void
ia64_float_to_chars_littleendian (char *lit, LITTLENUM_TYPE *words,
      int prec)
{
  while (prec--)
    {
      number_to_chars_littleendian (lit, (long) (words[prec]),
        sizeof (LITTLENUM_TYPE));
      lit += sizeof (LITTLENUM_TYPE);
    }
}
