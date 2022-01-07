
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raw; scalar_t__ name; } ;
struct TYPE_3__ {int raw; scalar_t__ name; } ;
struct ins_operands {TYPE_2__ target; TYPE_1__ source; } ;
struct ins {int name; } ;


 int scnprintf (char*,size_t,char*,int ,int ,int ) ;

__attribute__((used)) static int mov__scnprintf(struct ins *ins, char *bf, size_t size,
      struct ins_operands *ops)
{
 return scnprintf(bf, size, "%-6.6s %s,%s", ins->name,
    ops->source.name ?: ops->source.raw,
    ops->target.name ?: ops->target.raw);
}
