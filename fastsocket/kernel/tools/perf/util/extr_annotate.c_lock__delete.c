
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; int raw; } ;
struct TYPE_3__ {int ops; } ;
struct ins_operands {TYPE_2__ target; TYPE_1__ locked; } ;


 int free (int ) ;

__attribute__((used)) static void lock__delete(struct ins_operands *ops)
{
 free(ops->locked.ops);
 free(ops->target.raw);
 free(ops->target.name);
}
