
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long limm ;
 int limm_p ;

int
arc_opcode_limm_p (long *limmp)
{
  if (limmp)
    *limmp = limm;
  return limm_p;
}
