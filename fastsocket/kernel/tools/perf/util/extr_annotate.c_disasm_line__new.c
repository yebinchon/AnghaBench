
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; } ;
struct disasm_line {int offset; struct disasm_line* line; TYPE_1__ ops; int name; } ;
typedef int s64 ;


 int disasm_line__init_ins (struct disasm_line*) ;
 scalar_t__ disasm_line__parse (struct disasm_line*,int *,int *) ;
 int free (struct disasm_line*) ;
 struct disasm_line* strdup (char*) ;
 struct disasm_line* zalloc (int) ;

__attribute__((used)) static struct disasm_line *disasm_line__new(s64 offset, char *line, size_t privsize)
{
 struct disasm_line *dl = zalloc(sizeof(*dl) + privsize);

 if (dl != ((void*)0)) {
  dl->offset = offset;
  dl->line = strdup(line);
  if (dl->line == ((void*)0))
   goto out_delete;

  if (offset != -1) {
   if (disasm_line__parse(dl->line, &dl->name, &dl->ops.raw) < 0)
    goto out_free_line;

   disasm_line__init_ins(dl);
  }
 }

 return dl;

out_free_line:
 free(dl->line);
out_delete:
 free(dl);
 return ((void*)0);
}
