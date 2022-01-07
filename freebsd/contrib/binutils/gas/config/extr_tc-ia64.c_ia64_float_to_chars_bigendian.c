
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LITTLENUM_TYPE ;


 int number_to_chars_bigendian (char*,long,int) ;

__attribute__((used)) static void
ia64_float_to_chars_bigendian (char *lit, LITTLENUM_TYPE *words,
          int prec)
{
  while (prec--)
    {
      number_to_chars_bigendian (lit, (long) (*words++),
     sizeof (LITTLENUM_TYPE));
      lit += sizeof (LITTLENUM_TYPE);
    }
}
