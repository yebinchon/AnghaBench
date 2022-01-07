
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum type_pieces { ____Placeholder_type_pieces } type_pieces ;
struct TYPE_2__ {int piece; } ;


 int tp_end ;
 TYPE_1__* type_stack ;
 int type_stack_depth ;

enum type_pieces
pop_type (void)
{
  if (type_stack_depth)
    return type_stack[--type_stack_depth].piece;
  return tp_end;
}
