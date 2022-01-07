
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct symbol {int end; int start; } ;
struct map {int dummy; } ;
struct disasm_line {int dummy; } ;
struct annotation {TYPE_1__* src; } ;
typedef int s64 ;
struct TYPE_2__ {int source; } ;
typedef int FILE ;


 int disasm__add (int *,struct disasm_line*) ;
 struct disasm_line* disasm_line__new (int,char*,size_t) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 scalar_t__ isspace (char) ;
 int map__rip_2objdump (struct map*,int ) ;
 char* strchr (char*,char) ;
 int strtoull (char*,char**,int) ;
 struct annotation* symbol__annotation (struct symbol*) ;

__attribute__((used)) static int symbol__parse_objdump_line(struct symbol *sym, struct map *map,
          FILE *file, size_t privsize)
{
 struct annotation *notes = symbol__annotation(sym);
 struct disasm_line *dl;
 char *line = ((void*)0), *parsed_line, *tmp, *tmp2, *c;
 size_t line_len;
 s64 line_ip, offset = -1;

 if (getline(&line, &line_len, file) < 0)
  return -1;

 if (!line)
  return -1;

 while (line_len != 0 && isspace(line[line_len - 1]))
  line[--line_len] = '\0';

 c = strchr(line, '\n');
 if (c)
  *c = 0;

 line_ip = -1;
 parsed_line = line;




 tmp = line;
 while (*tmp) {
  if (*tmp != ' ')
   break;
  tmp++;
 }

 if (*tmp) {



  line_ip = strtoull(tmp, &tmp2, 16);
  if (*tmp2 != ':' || tmp == tmp2 || tmp2[1] == '\0')
   line_ip = -1;
 }

 if (line_ip != -1) {
  u64 start = map__rip_2objdump(map, sym->start),
      end = map__rip_2objdump(map, sym->end);

  offset = line_ip - start;
  if (offset < 0 || (u64)line_ip > end)
   offset = -1;
  else
   parsed_line = tmp2 + 1;
 }

 dl = disasm_line__new(offset, parsed_line, privsize);
 free(line);

 if (dl == ((void*)0))
  return -1;

 disasm__add(&notes->src->source, dl);

 return 0;
}
