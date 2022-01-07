
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;


 int DEPRECATED_STREQN (char*,char*,int) ;
 char* DEPRECATED_SYMBOL_NAME (struct symbol*) ;



 int SYMBOL_CLASS (struct symbol*) ;
 scalar_t__ SYMBOL_DOMAIN (struct symbol*) ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 int SYMBOL_VALUE (struct symbol*) ;
 int TYPE_CODE (struct type*) ;
 int equiv_types (struct type*,struct type*) ;
 int strlen (char*) ;

__attribute__((used)) static int
lesseq_defined_than (struct symbol *sym0, struct symbol *sym1)
{
  if (sym0 == sym1)
    return 1;
  if (SYMBOL_DOMAIN (sym0) != SYMBOL_DOMAIN (sym1)
      || SYMBOL_CLASS (sym0) != SYMBOL_CLASS (sym1))
    return 0;

  switch (SYMBOL_CLASS (sym0))
    {
    case 128:
      return 1;
    case 129:
      {
 struct type *type0 = SYMBOL_TYPE (sym0);
 struct type *type1 = SYMBOL_TYPE (sym1);
 char *name0 = DEPRECATED_SYMBOL_NAME (sym0);
 char *name1 = DEPRECATED_SYMBOL_NAME (sym1);
 int len0 = strlen (name0);
 return
   TYPE_CODE (type0) == TYPE_CODE (type1)
   && (equiv_types (type0, type1)
       || (len0 < strlen (name1) && DEPRECATED_STREQN (name0, name1, len0)
    && DEPRECATED_STREQN (name1 + len0, "___XV", 5)));
      }
    case 130:
      return SYMBOL_VALUE (sym0) == SYMBOL_VALUE (sym1)
 && equiv_types (SYMBOL_TYPE (sym0), SYMBOL_TYPE (sym1));
    default:
      return 0;
    }
}
