
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; } ;
struct disasm_line {TYPE_1__ ops; int ins; int name; } ;


 int ins__scnprintf (int ,char*,size_t,TYPE_1__*) ;
 int scnprintf (char*,size_t,char*,int ,int ) ;

int disasm_line__scnprintf(struct disasm_line *dl, char *bf, size_t size, bool raw)
{
 if (raw || !dl->ins)
  return scnprintf(bf, size, "%-6.6s %s", dl->name, dl->ops.raw);

 return ins__scnprintf(dl->ins, bf, size, &dl->ops);
}
