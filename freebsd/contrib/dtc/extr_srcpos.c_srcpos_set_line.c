
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int lineno; } ;


 TYPE_1__* current_srcfile ;

void srcpos_set_line(char *f, int l)
{
 current_srcfile->name = f;
 current_srcfile->lineno = l;
}
