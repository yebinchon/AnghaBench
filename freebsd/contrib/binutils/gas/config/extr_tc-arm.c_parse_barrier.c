
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asm_barrier_opt {int value; } ;


 int FAIL ;
 scalar_t__ ISALPHA (char) ;
 int arm_barrier_opt_hsh ;
 struct asm_barrier_opt* hash_find_n (int ,char*,int) ;

__attribute__((used)) static int
parse_barrier (char **str)
{
  char *p, *q;
  const struct asm_barrier_opt *o;

  p = q = *str;
  while (ISALPHA (*q))
    q++;

  o = hash_find_n (arm_barrier_opt_hsh, p, q - p);
  if (!o)
    return FAIL;

  *str = q;
  return o->value;
}
