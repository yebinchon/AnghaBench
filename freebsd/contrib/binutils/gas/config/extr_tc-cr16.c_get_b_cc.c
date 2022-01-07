
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* cr16_b_cond_tab ;
 unsigned int cr16_num_cc ;
 scalar_t__ streq (char*,scalar_t__) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static char *
get_b_cc (char * op)
{
  unsigned int i;
  char op1[5];

  for (i = 1; i < strlen (op); i++)
     op1[i-1] = op[i];

  op1[i-1] = '\0';

  for (i = 0; i < cr16_num_cc ; i++)
    if (streq (op1, cr16_b_cond_tab[i]))
      return (char *) cr16_b_cond_tab[i];

   return ((void*)0);
}
