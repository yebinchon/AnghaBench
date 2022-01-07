
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_field {int dummy; } ;


 int OP_EQ ;
 int OP_GLOB ;
 int OP_NE ;
 scalar_t__ is_string_field (struct ftrace_event_field*) ;

__attribute__((used)) static int is_legal_op(struct ftrace_event_field *field, int op)
{
 if (is_string_field(field) &&
     (op != OP_EQ && op != OP_NE && op != OP_GLOB))
  return 0;
 if (!is_string_field(field) && op == OP_GLOB)
  return 0;

 return 1;
}
