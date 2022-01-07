
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_entry {int dummy; } ;


 scalar_t__ ISALPHA (char) ;
 scalar_t__ ISDIGIT (char) ;
 char OPTIONAL_REGISTER_PREFIX ;
 char REGISTER_PREFIX ;
 int arm_reg_hsh ;
 scalar_t__ hash_find_n (int ,char*,int) ;
 int is_name_beginner (char) ;

__attribute__((used)) static struct reg_entry *
arm_reg_parse_multi (char **ccp)
{
  char *start = *ccp;
  char *p;
  struct reg_entry *reg;
  p = start;
  if (!ISALPHA (*p) || !is_name_beginner (*p))
    return ((void*)0);

  do
    p++;
  while (ISALPHA (*p) || ISDIGIT (*p) || *p == '_');

  reg = (struct reg_entry *) hash_find_n (arm_reg_hsh, start, p - start);

  if (!reg)
    return ((void*)0);

  *ccp = p;
  return reg;
}
