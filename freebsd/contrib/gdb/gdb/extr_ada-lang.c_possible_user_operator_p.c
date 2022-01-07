
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_ARRAY ;
 int TYPE_CODE_PTR ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;




 int VALUE_TYPE (struct value*) ;
 struct type* check_typedef (int ) ;
 int integer_type_p (struct type*) ;
 int numeric_type_p (struct type*) ;
 int scalar_type_p (struct type*) ;

__attribute__((used)) static int
possible_user_operator_p (enum exp_opcode op, struct value *args[])
{
  struct type *type0 = check_typedef (VALUE_TYPE (args[0]));
  struct type *type1 =
    (args[1] == ((void*)0)) ? ((void*)0) : check_typedef (VALUE_TYPE (args[1]));

  switch (op)
    {
    default:
      return 0;

    case 148:
    case 132:
    case 135:
    case 143:
      return (!(numeric_type_p (type0) && numeric_type_p (type1)));

    case 133:
    case 136:
    case 147:
    case 146:
    case 145:
      return (!(integer_type_p (type0) && integer_type_p (type1)));

    case 142:
    case 134:
    case 137:
    case 139:
    case 138:
    case 140:
      return (!(scalar_type_p (type0) && scalar_type_p (type1)));

    case 144:
      return ((TYPE_CODE (type0) != TYPE_CODE_ARRAY &&
        (TYPE_CODE (type0) != TYPE_CODE_PTR ||
  TYPE_CODE (TYPE_TARGET_TYPE (type0))
  != TYPE_CODE_ARRAY))
       || (TYPE_CODE (type1) != TYPE_CODE_ARRAY &&
    (TYPE_CODE (type1) != TYPE_CODE_PTR ||
     TYPE_CODE (TYPE_TARGET_TYPE (type1)) != TYPE_CODE_ARRAY)));

    case 141:
      return (!(numeric_type_p (type0) && integer_type_p (type1)));

    case 129:
    case 128:
    case 130:
    case 131:
      return (!numeric_type_p (type0));

    }
}
