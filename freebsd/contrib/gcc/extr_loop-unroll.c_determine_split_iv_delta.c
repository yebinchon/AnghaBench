
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
determine_split_iv_delta (unsigned n_copy, unsigned n_copies, bool unrolling)
{
  if (unrolling)
    {


      return n_copy;
    }
  else
    {


      if (n_copy)
 return n_copy - 1;
      else
 return n_copies;
    }
}
