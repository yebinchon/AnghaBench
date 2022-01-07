
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct scev_info_str {int chrec; int var; } ;
typedef scalar_t__ PTR ;


 int INSERT ;
 scalar_t__* htab_find_slot (int ,struct scev_info_str*,int ) ;
 scalar_t__ new_scev_info_str (int ) ;
 int scalar_evolution_info ;

__attribute__((used)) static tree *
find_var_scev_info (tree var)
{
  struct scev_info_str *res;
  struct scev_info_str tmp;
  PTR *slot;

  tmp.var = var;
  slot = htab_find_slot (scalar_evolution_info, &tmp, INSERT);

  if (!*slot)
    *slot = new_scev_info_str (var);
  res = (struct scev_info_str *) *slot;

  return &res->chrec;
}
