
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct disasm_line {int ops; TYPE_2__* ins; int name; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* parse ) (int *) ;} ;


 TYPE_2__* ins__find (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void disasm_line__init_ins(struct disasm_line *dl)
{
 dl->ins = ins__find(dl->name);

 if (dl->ins == ((void*)0))
  return;

 if (!dl->ins->ops)
  return;

 if (dl->ins->ops->parse)
  dl->ins->ops->parse(&dl->ops);
}
