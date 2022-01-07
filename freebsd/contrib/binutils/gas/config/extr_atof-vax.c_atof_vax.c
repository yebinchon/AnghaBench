
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char sign; int * low; int * high; scalar_t__ exponent; int * leader; } ;
typedef int LITTLENUM_TYPE ;
typedef TYPE_1__ FLONUM_TYPE ;


 int GUARD ;
 int MAX_PRECISION ;
 scalar_t__ atof_generic (char**,char*,char*,TYPE_1__*) ;
 scalar_t__ flonum_gen2vax (int,TYPE_1__*,int *) ;
 int make_invalid_floating_point_number (int *) ;
 int memset (int *,char,int) ;
 scalar_t__ what_kind_of_float (int,int*,long*) ;

__attribute__((used)) static char *
atof_vax (char *str,
   int what_kind,
   LITTLENUM_TYPE *words)
{
  FLONUM_TYPE f;
  LITTLENUM_TYPE bits[MAX_PRECISION + MAX_PRECISION + GUARD];



  char *return_value;
  int precision;
  long exponent_bits;

  return_value = str;
  f.low = bits + MAX_PRECISION;
  f.high = ((void*)0);
  f.leader = ((void*)0);
  f.exponent = 0;
  f.sign = '\0';

  if (what_kind_of_float (what_kind, &precision, &exponent_bits))
    {
      return_value = ((void*)0);
      make_invalid_floating_point_number (words);
    }

  if (return_value)
    {
      memset (bits, '\0', sizeof (LITTLENUM_TYPE) * MAX_PRECISION);




      f.high = f.low + precision - 1 + GUARD;

      if (atof_generic (&return_value, ".", "eE", &f))
 {
   make_invalid_floating_point_number (words);
   return_value = ((void*)0);
 }
      else if (flonum_gen2vax (what_kind, &f, words))
 return_value = ((void*)0);
    }

  return return_value;
}
