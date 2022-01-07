
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_FLOAT_VALS ;
 int abort () ;
 int * atof_ieee (char*,char,int ) ;
 scalar_t__* fp_const ;
 int * fp_values ;

__attribute__((used)) static void
set_constant_flonums (void)
{
  int i;

  for (i = 0; i < NUM_FLOAT_VALS; i++)
    if (atof_ieee ((char *) fp_const[i], 'x', fp_values[i]) == ((void*)0))
      abort ();
}
