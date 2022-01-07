
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct expression {int dummy; } ;


 int ada_resolve_subexp (struct expression**,int*,int,struct type*) ;

void
ada_resolve (struct expression **expp, struct type *context_type)
{
  int pc;
  pc = 0;
  ada_resolve_subexp (expp, &pc, 1, context_type);
}
