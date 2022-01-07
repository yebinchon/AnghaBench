
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
typedef int arc_t ;
struct TYPE_3__ {int first_out_arc; } ;



__attribute__((used)) static arc_t
first_out_arc (state_t state)
{
  return state->first_out_arc;
}
