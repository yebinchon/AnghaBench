
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_VERBOSITY_LEVEL ;
 unsigned int atoi (char const*) ;
 unsigned int vect_verbosity_level ;

void
vect_set_verbosity_level (const char *val)
{
   unsigned int vl;

   vl = atoi (val);
   if (vl < MAX_VERBOSITY_LEVEL)
     vect_verbosity_level = vl;
   else
     vect_verbosity_level = MAX_VERBOSITY_LEVEL - 1;
}
