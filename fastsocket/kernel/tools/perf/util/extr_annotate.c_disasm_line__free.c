
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct disasm_line {int ops; TYPE_2__* ins; struct disasm_line* name; struct disasm_line* line; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* free ) (int *) ;} ;


 int free (struct disasm_line*) ;
 int ins__delete (int *) ;
 int stub1 (int *) ;

void disasm_line__free(struct disasm_line *dl)
{
 free(dl->line);
 free(dl->name);
 if (dl->ins && dl->ins->ops->free)
  dl->ins->ops->free(&dl->ops);
 else
  ins__delete(&dl->ops);
 free(dl);
}
