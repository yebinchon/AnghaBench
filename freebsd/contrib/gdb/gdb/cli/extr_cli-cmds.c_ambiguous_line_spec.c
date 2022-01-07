
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symtabs_and_lines {int nelts; TYPE_2__* sals; } ;
struct TYPE_4__ {int line; TYPE_1__* symtab; } ;
struct TYPE_3__ {int filename; } ;


 int printf_filtered (char*,int ,int ) ;

__attribute__((used)) static void
ambiguous_line_spec (struct symtabs_and_lines *sals)
{
  int i;

  for (i = 0; i < sals->nelts; ++i)
    printf_filtered ("file: \"%s\", line number: %d\n",
       sals->sals[i].symtab->filename, sals->sals[i].line);
}
