
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neon_type_el {int size; int type; } ;


 unsigned int N_EQK ;
 int assert (int) ;
 int neon_modify_type_size (unsigned int,int *,int *) ;

__attribute__((used)) static struct neon_type_el
neon_type_promote (struct neon_type_el *key, unsigned thisarg)
{
  struct neon_type_el dest = *key;

  assert ((thisarg & N_EQK) != 0);

  neon_modify_type_size (thisarg, &dest.type, &dest.size);

  return dest;
}
