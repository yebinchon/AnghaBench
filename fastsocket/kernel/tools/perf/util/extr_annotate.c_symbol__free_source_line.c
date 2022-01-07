
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct source_line {struct source_line* path; } ;
struct annotation {TYPE_1__* src; } ;
struct TYPE_2__ {struct source_line* lines; } ;


 int free (struct source_line*) ;
 struct annotation* symbol__annotation (struct symbol*) ;

__attribute__((used)) static void symbol__free_source_line(struct symbol *sym, int len)
{
 struct annotation *notes = symbol__annotation(sym);
 struct source_line *src_line = notes->src->lines;
 int i;

 for (i = 0; i < len; i++)
  free(src_line[i].path);

 free(src_line);
 notes->src->lines = ((void*)0);
}
