
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct constraint_expr {int var; scalar_t__ offset; void* type; } ;
struct TYPE_11__ {int is_artificial_var; int is_special_var; int * next; scalar_t__ offset; int fullsize; int size; } ;


 void* ADDRESSOF ;
 void* DEREF ;
 void* SCALAR ;
 int VEC_safe_push (int ,int ,int ,TYPE_1__*) ;
 void* anything_id ;
 int anything_tree ;
 int constraint_t ;
 int constraints ;
 int create_tmp_var_raw (int ,char*) ;
 void* escaped_vars_id ;
 int escaped_vars_tree ;
 int heap ;
 int insert_vi_for_tree (int ,TYPE_1__*) ;
 int integer_id ;
 int integer_tree ;
 TYPE_1__* new_constraint (struct constraint_expr,struct constraint_expr) ;
 TYPE_1__* new_var_info (int ,int,char*) ;
 scalar_t__ nothing_id ;
 int nothing_tree ;
 int process_constraint (TYPE_1__*) ;
 int readonly_id ;
 int readonly_tree ;
 TYPE_1__* var_anything ;
 TYPE_1__* var_escaped_vars ;
 TYPE_1__* var_integer ;
 TYPE_1__* var_nothing ;
 TYPE_1__* var_readonly ;
 int varinfo_t ;
 int varmap ;
 int void_type_node ;

__attribute__((used)) static void
init_base_vars (void)
{
  struct constraint_expr lhs, rhs;



  nothing_tree = create_tmp_var_raw (void_type_node, "NULL");
  var_nothing = new_var_info (nothing_tree, 0, "NULL");
  insert_vi_for_tree (nothing_tree, var_nothing);
  var_nothing->is_artificial_var = 1;
  var_nothing->offset = 0;
  var_nothing->size = ~0;
  var_nothing->fullsize = ~0;
  var_nothing->is_special_var = 1;
  nothing_id = 0;
  VEC_safe_push (varinfo_t, heap, varmap, var_nothing);



  anything_tree = create_tmp_var_raw (void_type_node, "ANYTHING");
  var_anything = new_var_info (anything_tree, 1, "ANYTHING");
  insert_vi_for_tree (anything_tree, var_anything);
  var_anything->is_artificial_var = 1;
  var_anything->size = ~0;
  var_anything->offset = 0;
  var_anything->next = ((void*)0);
  var_anything->fullsize = ~0;
  var_anything->is_special_var = 1;
  anything_id = 1;




  VEC_safe_push (varinfo_t, heap, varmap, var_anything);
  lhs.type = SCALAR;
  lhs.var = anything_id;
  lhs.offset = 0;
  rhs.type = ADDRESSOF;
  rhs.var = anything_id;
  rhs.offset = 0;




  VEC_safe_push (constraint_t, heap, constraints, new_constraint (lhs, rhs));



  readonly_tree = create_tmp_var_raw (void_type_node, "READONLY");
  var_readonly = new_var_info (readonly_tree, 2, "READONLY");
  var_readonly->is_artificial_var = 1;
  var_readonly->offset = 0;
  var_readonly->size = ~0;
  var_readonly->fullsize = ~0;
  var_readonly->next = ((void*)0);
  var_readonly->is_special_var = 1;
  insert_vi_for_tree (readonly_tree, var_readonly);
  readonly_id = 2;
  VEC_safe_push (varinfo_t, heap, varmap, var_readonly);





  lhs.type = SCALAR;
  lhs.var = readonly_id;
  lhs.offset = 0;
  rhs.type = ADDRESSOF;
  rhs.var = anything_id;
  rhs.offset = 0;

  process_constraint (new_constraint (lhs, rhs));



  integer_tree = create_tmp_var_raw (void_type_node, "INTEGER");
  var_integer = new_var_info (integer_tree, 3, "INTEGER");
  insert_vi_for_tree (integer_tree, var_integer);
  var_integer->is_artificial_var = 1;
  var_integer->size = ~0;
  var_integer->fullsize = ~0;
  var_integer->offset = 0;
  var_integer->next = ((void*)0);
  var_integer->is_special_var = 1;
  integer_id = 3;
  VEC_safe_push (varinfo_t, heap, varmap, var_integer);



  lhs.type = SCALAR;
  lhs.var = integer_id;
  lhs.offset = 0;
  rhs.type = ADDRESSOF;
  rhs.var = anything_id;
  rhs.offset = 0;
  process_constraint (new_constraint (lhs, rhs));



  escaped_vars_tree = create_tmp_var_raw (void_type_node, "ESCAPED_VARS");
  var_escaped_vars = new_var_info (escaped_vars_tree, 4, "ESCAPED_VARS");
  insert_vi_for_tree (escaped_vars_tree, var_escaped_vars);
  var_escaped_vars->is_artificial_var = 1;
  var_escaped_vars->size = ~0;
  var_escaped_vars->fullsize = ~0;
  var_escaped_vars->offset = 0;
  var_escaped_vars->next = ((void*)0);
  escaped_vars_id = 4;
  VEC_safe_push (varinfo_t, heap, varmap, var_escaped_vars);


  lhs.type = SCALAR;
  lhs.var = escaped_vars_id;
  lhs.offset = 0;
  rhs.type = DEREF;
  rhs.var = escaped_vars_id;
  rhs.offset = 0;
  process_constraint (new_constraint (lhs, rhs));

}
