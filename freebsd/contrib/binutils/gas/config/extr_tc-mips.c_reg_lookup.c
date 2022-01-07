
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int RNUM_MASK ;
 int RTYPE_GP ;
 unsigned int RTYPE_VEC ;
 unsigned int RWARN ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 int S_GET_VALUE (int *) ;
 int as_warn (char*,char*) ;
 scalar_t__ is_name_beginner (char) ;
 scalar_t__ is_part_of_name (char) ;
 scalar_t__ itbl_get_reg_val (char*,unsigned long*) ;
 scalar_t__ itbl_have_entries ;
 scalar_t__ reg_section ;
 int * symbol_find (char*) ;

__attribute__((used)) static int
reg_lookup (char **s, unsigned int types, unsigned int *regnop)
{
  symbolS *symbolP;
  char *e;
  char save_c;
  int reg = -1;


  e = *s;
  if (is_name_beginner (*e))
    ++e;
  while (is_part_of_name (*e))
    ++e;


  save_c = *e;
  *e = '\0';


  if ((symbolP = symbol_find (*s)) && S_GET_SEGMENT (symbolP) == reg_section)
    {
      int r = S_GET_VALUE (symbolP);
      if (r & types)
 reg = r & RNUM_MASK;
      else if ((types & RTYPE_VEC) && (r & ~1) == (RTYPE_GP | 2))

 reg = (r & RNUM_MASK) - 2;
    }

  else if ((types & RTYPE_GP) && itbl_have_entries)
    {
      char *n = *s;
      unsigned long r;

      if (*n == '$')
 ++n;
      if (itbl_get_reg_val (n, &r))
 reg = r & RNUM_MASK;
    }


  if (reg >= 0)
    *s = e;
  else if (types & RWARN)
    as_warn ("Unrecognized register name `%s'", *s);

  *e = save_c;
  if (regnop)
    *regnop = reg;
  return reg >= 0;
}
