
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neon_type_el {int dummy; } ;
struct neon_type {int elems; struct neon_type_el* el; } ;


 int FAIL ;
 scalar_t__ SUCCESS ;
 int _ (char*) ;
 int first_error (int ) ;
 scalar_t__ parse_neon_type (struct neon_type*,char**) ;

__attribute__((used)) static int
parse_neon_operand_type (struct neon_type_el *vectype, char **ccp)
{
  char *str = *ccp;
  struct neon_type optype;

  if (*str == '.')
    {
      if (parse_neon_type (&optype, &str) == SUCCESS)
        {
          if (optype.elems == 1)
            *vectype = optype.el[0];
          else
            {
              first_error (_("only one type should be specified for operand"));
              return FAIL;
            }
        }
      else
        {
          first_error (_("vector type expected"));
          return FAIL;
        }
    }
  else
    return FAIL;

  *ccp = str;

  return SUCCESS;
}
