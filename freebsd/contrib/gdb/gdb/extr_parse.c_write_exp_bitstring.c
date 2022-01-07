
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stoken {int length; int ptr; } ;
struct expression {int * elts; } ;
typedef int LONGEST ;


 int BYTES_TO_EXP_ELEM (int) ;
 scalar_t__ EXP_ELEM_TO_BYTES (int) ;
 int HOST_CHAR_BIT ;
 struct expression* expout ;
 int expout_ptr ;
 int expout_size ;
 int max (int,int) ;
 int memcpy (char*,int ,int) ;
 int write_exp_elt_longcst (int ) ;
 scalar_t__ xrealloc (char*,scalar_t__) ;

void
write_exp_bitstring (struct stoken str)
{
  int bits = str.length;
  int len = (bits + HOST_CHAR_BIT - 1) / HOST_CHAR_BIT;
  int lenelt;
  char *strdata;





  lenelt = 2 + BYTES_TO_EXP_ELEM (len);




  if ((expout_ptr + lenelt) >= expout_size)
    {
      expout_size = max (expout_size * 2, expout_ptr + lenelt + 10);
      expout = (struct expression *)
 xrealloc ((char *) expout, (sizeof (struct expression)
        + EXP_ELEM_TO_BYTES (expout_size)));
    }





  write_exp_elt_longcst ((LONGEST) bits);
  strdata = (char *) &expout->elts[expout_ptr];
  memcpy (strdata, str.ptr, len);
  expout_ptr += lenelt - 2;
  write_exp_elt_longcst ((LONGEST) bits);
}
