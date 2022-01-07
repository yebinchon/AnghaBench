
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addressT ;


 int OCTETS_PER_BYTE ;
 int frag_now_fix_octets () ;

addressT
frag_now_fix (void)
{
  return frag_now_fix_octets () / OCTETS_PER_BYTE;
}
