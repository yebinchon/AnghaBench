
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ops; int * ins; } ;
struct ins_operands {TYPE_1__ locked; } ;
struct ins {int name; } ;


 int ins__raw_scnprintf (struct ins*,char*,size_t,struct ins_operands*) ;
 int ins__scnprintf (int *,char*,size_t,int ) ;
 int scnprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static int lock__scnprintf(struct ins *ins, char *bf, size_t size,
      struct ins_operands *ops)
{
 int printed;

 if (ops->locked.ins == ((void*)0))
  return ins__raw_scnprintf(ins, bf, size, ops);

 printed = scnprintf(bf, size, "%-6.6s ", ins->name);
 return printed + ins__scnprintf(ops->locked.ins, bf + printed,
     size - printed, ops->locked.ops);
}
