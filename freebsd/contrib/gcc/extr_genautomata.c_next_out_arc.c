
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* arc_t ;
struct TYPE_4__ {struct TYPE_4__* next_out_arc; } ;



__attribute__((used)) static arc_t
next_out_arc (arc_t arc)
{
  return arc->next_out_arc;
}
