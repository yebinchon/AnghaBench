
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
typedef int LONGEST ;
typedef int CORE_ADDR ;




 int SYMBOL_CLASS (struct symbol*) ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 int SYMBOL_VALUE (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct symbol*) ;
 struct value* value_from_longest (struct type*,int ) ;
 struct value* value_from_pointer (struct type*,int ) ;

__attribute__((used)) static struct value *
const_var_ref (struct symbol *var)
{
  struct type *type = SYMBOL_TYPE (var);

  switch (SYMBOL_CLASS (var))
    {
    case 129:
      return value_from_longest (type, (LONGEST) SYMBOL_VALUE (var));

    case 128:
      return value_from_pointer (type, (CORE_ADDR) SYMBOL_VALUE_ADDRESS (var));

    default:
      return 0;
    }
}
