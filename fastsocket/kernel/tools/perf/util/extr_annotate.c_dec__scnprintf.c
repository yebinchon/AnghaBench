
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; scalar_t__ name; } ;
struct ins_operands {TYPE_1__ target; } ;
struct ins {int name; } ;


 int scnprintf (char*,size_t,char*,int ,int ) ;

__attribute__((used)) static int dec__scnprintf(struct ins *ins, char *bf, size_t size,
      struct ins_operands *ops)
{
 return scnprintf(bf, size, "%-6.6s %s", ins->name,
    ops->target.name ?: ops->target.raw);
}
