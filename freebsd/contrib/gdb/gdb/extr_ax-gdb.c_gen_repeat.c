
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union exp_element {int dummy; } exp_element ;
struct value {int type; } ;
struct type {int dummy; } ;
struct axs_value {scalar_t__ kind; struct type* type; } ;
struct agent_expr {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ axs_lvalue_memory ;
 int builtin_type_int ;
 struct value* const_expr (union exp_element**) ;
 struct type* create_array_type (int ,struct type*,struct type*) ;
 struct type* create_range_type (int ,int ,int ,int) ;
 int error (char*) ;
 int gen_expr (union exp_element**,struct agent_expr*,struct axs_value*) ;
 int value_as_long (struct value*) ;

__attribute__((used)) static void
gen_repeat (union exp_element **pc, struct agent_expr *ax,
     struct axs_value *value)
{
  struct axs_value value1;


  gen_expr (pc, ax, &value1);
  if (value1.kind != axs_lvalue_memory)
    error ("Left operand of `@' must be an object in memory.");


  {
    struct value *v = const_expr (pc);
    int length;

    if (!v)
      error ("Right operand of `@' must be a constant, in agent expressions.");
    if (TYPE_CODE (v->type) != TYPE_CODE_INT)
      error ("Right operand of `@' must be an integer.");
    length = value_as_long (v);
    if (length <= 0)
      error ("Right operand of `@' must be positive.");



    {


      struct type *range
      = create_range_type (0, builtin_type_int, 0, length - 1);
      struct type *array = create_array_type (0, value1.type, range);

      value->kind = axs_lvalue_memory;
      value->type = array;
    }
  }
}
