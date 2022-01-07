
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct axs_value {scalar_t__ kind; struct type* type; } ;
struct agent_expr {int dummy; } ;


 int TARGET_CHAR_BIT ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 int TYPE_FIELD_BITPOS (struct type*,int) ;
 scalar_t__ TYPE_FIELD_BITSIZE (struct type*,int) ;
 scalar_t__ TYPE_FIELD_PACKED (struct type*,int) ;
 struct type* TYPE_FIELD_TYPE (struct type*,int) ;
 scalar_t__ axs_lvalue_memory ;
 struct type* check_typedef (struct type*) ;
 int error (char*,...) ;
 int find_field (struct type*,char*) ;
 int gen_bitfield_ref (struct agent_expr*,struct axs_value*,struct type*,int,scalar_t__) ;
 int gen_deref (struct agent_expr*,struct axs_value*) ;
 int gen_offset (struct agent_expr*,int) ;
 int gen_usual_unary (struct agent_expr*,struct axs_value*) ;

__attribute__((used)) static void
gen_struct_ref (struct agent_expr *ax, struct axs_value *value, char *field,
  char *operator_name, char *operand_name)
{
  struct type *type;
  int i;




  while (TYPE_CODE (value->type) == TYPE_CODE_PTR)
    {
      gen_usual_unary (ax, value);
      gen_deref (ax, value);
    }
  type = check_typedef (value->type);


  if (TYPE_CODE (type) != TYPE_CODE_STRUCT
      && TYPE_CODE (type) != TYPE_CODE_UNION)
    error ("The left operand of `%s' is not a %s.",
    operator_name, operand_name);



  if (value->kind != axs_lvalue_memory)
    error ("Structure does not live in memory.");

  i = find_field (type, field);


  if (TYPE_FIELD_PACKED (type, i))
    gen_bitfield_ref (ax, value, TYPE_FIELD_TYPE (type, i),
        TYPE_FIELD_BITPOS (type, i),
        (TYPE_FIELD_BITPOS (type, i)
         + TYPE_FIELD_BITSIZE (type, i)));
  else
    {
      gen_offset (ax, TYPE_FIELD_BITPOS (type, i) / TARGET_CHAR_BIT);
      value->kind = axs_lvalue_memory;
      value->type = TYPE_FIELD_TYPE (type, i);
    }
}
