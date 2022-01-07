
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int leader; unsigned int low; unsigned int high; scalar_t__ exponent; int sign; } ;
typedef int LITTLENUM_TYPE ;
typedef TYPE_1__ FLONUM_TYPE ;


 int memcpy (void*,void*,unsigned int) ;
 int memset (char*,char,unsigned int) ;

void
flonum_copy (FLONUM_TYPE *in, FLONUM_TYPE *out)
{
  unsigned int in_length;
  unsigned int out_length;

  out->sign = in->sign;
  in_length = in->leader - in->low;

  if (in->leader < in->low)
    {
      out->leader = out->low - 1;
    }
  else
    {
      out_length = out->high - out->low;


      if (in_length <= out_length)
 {
   {



     if (in_length < out_length)
       {
  memset ((char *) (out->low + in_length + 1), '\0',
   out_length - in_length);
       }
   }
   memcpy ((void *) (out->low), (void *) (in->low),
    ((in_length + 1) * sizeof (LITTLENUM_TYPE)));
   out->exponent = in->exponent;
   out->leader = in->leader - in->low + out->low;
 }
      else
 {
   int shorten;

   shorten = in_length - out_length;

   memcpy ((void *) (out->low), (void *) (in->low + shorten),
    ((out_length + 1) * sizeof (LITTLENUM_TYPE)));
   out->leader = out->high;
   out->exponent = in->exponent + shorten;
 }
    }
}
