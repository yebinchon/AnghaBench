
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asm_cond {int value; } ;
struct TYPE_2__ {int error; } ;


 int FAIL ;
 scalar_t__ ISALPHA (char) ;
 int _ (char*) ;
 int arm_cond_hsh ;
 struct asm_cond* hash_find_n (int ,char*,int) ;
 TYPE_1__ inst ;

__attribute__((used)) static int
parse_cond (char **str)
{
  char *p, *q;
  const struct asm_cond *c;

  p = q = *str;
  while (ISALPHA (*q))
    q++;

  c = hash_find_n (arm_cond_hsh, p, q - p);
  if (!c)
    {
      inst.error = _("condition required");
      return FAIL;
    }

  *str = q;
  return c->value;
}
