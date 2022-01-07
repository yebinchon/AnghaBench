
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int args; } ;
struct TYPE_6__ {TYPE_1__* op; } ;
struct TYPE_8__ {TYPE_3__ s_extended_operator; TYPE_2__ s_operator; } ;
struct demangle_component {int type; TYPE_4__ u; } ;
struct d_info {int expansion; } ;
struct TYPE_5__ {int len; int args; int code; } ;


 int DEMANGLE_COMPONENT_BINARY ;
 int DEMANGLE_COMPONENT_BINARY_ARGS ;



 int DEMANGLE_COMPONENT_QUAL_NAME ;
 int DEMANGLE_COMPONENT_TEMPLATE ;
 int DEMANGLE_COMPONENT_TRINARY ;
 int DEMANGLE_COMPONENT_TRINARY_ARG1 ;
 int DEMANGLE_COMPONENT_TRINARY_ARG2 ;
 int DEMANGLE_COMPONENT_UNARY ;
 struct demangle_component* cplus_demangle_type (struct d_info*) ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_expr_primary (struct d_info*) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 struct demangle_component* d_operator_name (struct d_info*) ;
 char d_peek_char (struct d_info*) ;
 char d_peek_next_char (struct d_info*) ;
 struct demangle_component* d_template_args (struct d_info*) ;
 struct demangle_component* d_template_param (struct d_info*) ;
 struct demangle_component* d_unqualified_name (struct d_info*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct demangle_component *
d_expression (struct d_info *di)
{
  char peek;

  peek = d_peek_char (di);
  if (peek == 'L')
    return d_expr_primary (di);
  else if (peek == 'T')
    return d_template_param (di);
  else if (peek == 's' && d_peek_next_char (di) == 'r')
    {
      struct demangle_component *type;
      struct demangle_component *name;

      d_advance (di, 2);
      type = cplus_demangle_type (di);
      name = d_unqualified_name (di);
      if (d_peek_char (di) != 'I')
 return d_make_comp (di, DEMANGLE_COMPONENT_QUAL_NAME, type, name);
      else
 return d_make_comp (di, DEMANGLE_COMPONENT_QUAL_NAME, type,
       d_make_comp (di, DEMANGLE_COMPONENT_TEMPLATE, name,
      d_template_args (di)));
    }
  else
    {
      struct demangle_component *op;
      int args;

      op = d_operator_name (di);
      if (op == ((void*)0))
 return ((void*)0);

      if (op->type == 128)
 di->expansion += op->u.s_operator.op->len - 2;

      if (op->type == 128
   && strcmp (op->u.s_operator.op->code, "st") == 0)
 return d_make_comp (di, DEMANGLE_COMPONENT_UNARY, op,
       cplus_demangle_type (di));

      switch (op->type)
 {
 default:
   return ((void*)0);
 case 128:
   args = op->u.s_operator.op->args;
   break;
 case 129:
   args = op->u.s_extended_operator.args;
   break;
 case 130:
   args = 1;
   break;
 }

      switch (args)
 {
 case 1:
   return d_make_comp (di, DEMANGLE_COMPONENT_UNARY, op,
         d_expression (di));
 case 2:
   {
     struct demangle_component *left;

     left = d_expression (di);
     return d_make_comp (di, DEMANGLE_COMPONENT_BINARY, op,
    d_make_comp (di,
          DEMANGLE_COMPONENT_BINARY_ARGS,
          left,
          d_expression (di)));
   }
 case 3:
   {
     struct demangle_component *first;
     struct demangle_component *second;

     first = d_expression (di);
     second = d_expression (di);
     return d_make_comp (di, DEMANGLE_COMPONENT_TRINARY, op,
    d_make_comp (di,
          DEMANGLE_COMPONENT_TRINARY_ARG1,
          first,
          d_make_comp (di,
         DEMANGLE_COMPONENT_TRINARY_ARG2,
         second,
         d_expression (di))));
   }
 default:
   return ((void*)0);
 }
    }
}
