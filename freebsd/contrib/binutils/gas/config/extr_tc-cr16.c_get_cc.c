
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cr16_b_cond_tab ;
 unsigned int cr16_num_cc ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
get_cc (char *cc_name)
{
   unsigned int i;

   for (i = 0; i < cr16_num_cc; i++)
     if (strcmp (cc_name, cr16_b_cond_tab[i]) == 0)
       return i;

   return -1;
}
