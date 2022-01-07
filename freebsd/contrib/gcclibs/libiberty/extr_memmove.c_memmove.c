
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTR ;


 int bcopy (int const,int ,size_t) ;

PTR
memmove (PTR s1, const PTR s2, size_t n)
{
  bcopy (s2, s1, n);
  return s1;
}
