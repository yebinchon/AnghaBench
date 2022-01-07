
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scev_info_str {scalar_t__ var; } ;



__attribute__((used)) static int
eq_scev_info (const void *e1, const void *e2)
{
  const struct scev_info_str *elt1 = (const struct scev_info_str *) e1;
  const struct scev_info_str *elt2 = (const struct scev_info_str *) e2;

  return elt1->var == elt2->var;
}
