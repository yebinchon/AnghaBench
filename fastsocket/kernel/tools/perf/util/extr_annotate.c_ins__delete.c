
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; int raw; } ;
struct TYPE_3__ {int name; int raw; } ;
struct ins_operands {TYPE_2__ target; TYPE_1__ source; } ;


 int free (int ) ;

__attribute__((used)) static void ins__delete(struct ins_operands *ops)
{
 free(ops->source.raw);
 free(ops->source.name);
 free(ops->target.raw);
 free(ops->target.name);
}
