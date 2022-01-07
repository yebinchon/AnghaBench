
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tristate ;
struct TYPE_8__ {TYPE_4__* sym; struct expr* expr; } ;
struct TYPE_7__ {TYPE_4__* sym; struct expr* expr; } ;
struct expr {int type; TYPE_3__ right; TYPE_2__ left; } ;
struct TYPE_6__ {int tri; } ;
struct TYPE_9__ {TYPE_1__ curr; } ;


 int EXPR_AND (int ,int ) ;
 int EXPR_NOT (int ) ;
 int EXPR_OR (int ,int ) ;






 int no ;
 int printf (char*,int) ;
 int strcmp (char const*,char const*) ;
 int sym_calc_value (TYPE_4__*) ;
 char* sym_get_string_value (TYPE_4__*) ;
 int yes ;

tristate expr_calc_value(struct expr *e)
{
 tristate val1, val2;
 const char *str1, *str2;

 if (!e)
  return yes;

 switch (e->type) {
 case 129:
  sym_calc_value(e->left.sym);
  return e->left.sym->curr.tri;
 case 133:
  val1 = expr_calc_value(e->left.expr);
  val2 = expr_calc_value(e->right.expr);
  return EXPR_AND(val1, val2);
 case 130:
  val1 = expr_calc_value(e->left.expr);
  val2 = expr_calc_value(e->right.expr);
  return EXPR_OR(val1, val2);
 case 131:
  val1 = expr_calc_value(e->left.expr);
  return EXPR_NOT(val1);
 case 132:
  sym_calc_value(e->left.sym);
  sym_calc_value(e->right.sym);
  str1 = sym_get_string_value(e->left.sym);
  str2 = sym_get_string_value(e->right.sym);
  return !strcmp(str1, str2) ? yes : no;
 case 128:
  sym_calc_value(e->left.sym);
  sym_calc_value(e->right.sym);
  str1 = sym_get_string_value(e->left.sym);
  str2 = sym_get_string_value(e->right.sym);
  return !strcmp(str1, str2) ? no : yes;
 default:
  printf("expr_calc_value: %d?\n", e->type);
  return no;
 }
}
