
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LONG_MAX ;
 scalar_t__ TYPE_0 ;
 int* end_ptr ;
 int* fptr ;
 scalar_t__ rand_type ;
 int* rptr ;
 int* state ;

long int
random (void)
{
  if (rand_type == TYPE_0)
    {
      state[0] = ((state[0] * 1103515245) + 12345) & LONG_MAX;
      return state[0];
    }
  else
    {
      long int i;
      *fptr += *rptr;

      i = (*fptr >> 1) & LONG_MAX;
      ++fptr;
      if (fptr >= end_ptr)
 {
   fptr = state;
   ++rptr;
 }
      else
 {
   ++rptr;
   if (rptr >= end_ptr)
     rptr = state;
 }
      return i;
    }
}
