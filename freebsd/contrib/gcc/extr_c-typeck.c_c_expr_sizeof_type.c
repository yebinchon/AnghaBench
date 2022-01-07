
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct c_type_name {int dummy; } ;
struct c_expr {int original_code; int value; } ;


 int C_TYPE_VARIABLE_SIZE (scalar_t__) ;
 int ERROR_MARK ;
 int c_sizeof (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ groktypename (struct c_type_name*) ;
 int pop_maybe_used (int) ;

struct c_expr
c_expr_sizeof_type (struct c_type_name *t)
{
  tree type;
  struct c_expr ret;
  type = groktypename (t);
  ret.value = c_sizeof (type);
  ret.original_code = ERROR_MARK;
  pop_maybe_used (type != error_mark_node
    ? C_TYPE_VARIABLE_SIZE (type) : 0);
  return ret;
}
