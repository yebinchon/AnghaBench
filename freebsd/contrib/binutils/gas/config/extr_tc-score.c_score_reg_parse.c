
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_entry {int number; } ;
struct hash_control {int dummy; } ;


 scalar_t__ FAIL ;
 scalar_t__ ISALPHA (char) ;
 scalar_t__ ISDIGIT (char) ;
 scalar_t__ hash_find (struct hash_control*,char*) ;
 int is_name_beginner (char) ;

__attribute__((used)) static int
score_reg_parse (char **ccp, struct hash_control *htab)
{
  char *start = *ccp;
  char c;
  char *p;
  struct reg_entry *reg;

  p = start;
  if (!ISALPHA (*p) || !is_name_beginner (*p))
    return (int) FAIL;

  c = *p++;

  while (ISALPHA (c) || ISDIGIT (c) || c == '_')
    c = *p++;

  *--p = 0;
  reg = (struct reg_entry *) hash_find (htab, start);
  *p = c;

  if (reg)
    {
      *ccp = p;
      return reg->number;
    }
  return (int) FAIL;
}
