
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {unsigned long* sig; scalar_t__ cl; int sign; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int HOST_BITS_PER_LONG ;
 scalar_t__ ISDIGIT (char const) ;
 int MAX_EXP ;
 int SET_REAL_EXP (TYPE_1__*,int) ;
 int SIGNIFICAND_BITS ;
 int _hex_bad ;
 int cmp_significand_0 (TYPE_1__*) ;
 int do_add (TYPE_1__*,TYPE_1__*,int ,int ) ;
 int do_multiply (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ;
 int get_inf (TYPE_1__*,int) ;
 int get_zero (TYPE_1__*,int) ;
 int hex_value (char const) ;
 int normalize (TYPE_1__*) ;
 int real_digit (int) ;
 scalar_t__ rvc_normal ;
 scalar_t__ rvc_zero ;
 TYPE_1__* ten_to_ptwo (int ) ;
 int times_pten (TYPE_1__*,int) ;

void
real_from_string (REAL_VALUE_TYPE *r, const char *str)
{
  int exp = 0;
  bool sign = 0;

  get_zero (r, 0);

  if (*str == '-')
    {
      sign = 1;
      str++;
    }
  else if (*str == '+')
    str++;

  if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X'))
    {

      int pos = SIGNIFICAND_BITS - 4, d;

      str += 2;

      while (*str == '0')
 str++;
      while (1)
 {
   d = hex_value (*str);
   if (d == _hex_bad)
     break;
   if (pos >= 0)
     {
       r->sig[pos / HOST_BITS_PER_LONG]
  |= (unsigned long) d << (pos % HOST_BITS_PER_LONG);
       pos -= 4;
     }
   else if (d)


     r->sig[0] |= 1;
   exp += 4;
   str++;
 }
      if (*str == '.')
 {
   str++;
   if (pos == SIGNIFICAND_BITS - 4)
     {
       while (*str == '0')
  str++, exp -= 4;
     }
   while (1)
     {
       d = hex_value (*str);
       if (d == _hex_bad)
  break;
       if (pos >= 0)
  {
    r->sig[pos / HOST_BITS_PER_LONG]
      |= (unsigned long) d << (pos % HOST_BITS_PER_LONG);
    pos -= 4;
  }
       else if (d)


  r->sig[0] |= 1;
       str++;
     }
 }


      if (!cmp_significand_0 (r))
 goto underflow;

      if (*str == 'p' || *str == 'P')
 {
   bool exp_neg = 0;

   str++;
   if (*str == '-')
     {
       exp_neg = 1;
       str++;
     }
   else if (*str == '+')
     str++;

   d = 0;
   while (ISDIGIT (*str))
     {
       d *= 10;
       d += *str - '0';
       if (d > MAX_EXP)
  {

    if (exp_neg)
      goto underflow;
    else
      goto overflow;
  }
       str++;
     }
   if (exp_neg)
     d = -d;

   exp += d;
 }

      r->cl = rvc_normal;
      SET_REAL_EXP (r, exp);

      normalize (r);
    }
  else
    {

      const REAL_VALUE_TYPE *ten = ten_to_ptwo (0);
      int d;

      while (*str == '0')
 str++;
      while (ISDIGIT (*str))
 {
   d = *str++ - '0';
   do_multiply (r, r, ten);
   if (d)
     do_add (r, r, real_digit (d), 0);
 }
      if (*str == '.')
 {
   str++;
   if (r->cl == rvc_zero)
     {
       while (*str == '0')
  str++, exp--;
     }
   while (ISDIGIT (*str))
     {
       d = *str++ - '0';
       do_multiply (r, r, ten);
       if (d)
         do_add (r, r, real_digit (d), 0);
       exp--;
     }
 }


      if (r->cl == rvc_zero)
 goto underflow;

      if (*str == 'e' || *str == 'E')
 {
   bool exp_neg = 0;

   str++;
   if (*str == '-')
     {
       exp_neg = 1;
       str++;
     }
   else if (*str == '+')
     str++;

   d = 0;
   while (ISDIGIT (*str))
     {
       d *= 10;
       d += *str - '0';
       if (d > MAX_EXP)
  {

    if (exp_neg)
      goto underflow;
    else
      goto overflow;
  }
       str++;
     }
   if (exp_neg)
     d = -d;
   exp += d;
 }

      if (exp)
 times_pten (r, exp);
    }

  r->sign = sign;
  return;

 underflow:
  get_zero (r, sign);
  return;

 overflow:
  get_inf (r, sign);
  return;
}
