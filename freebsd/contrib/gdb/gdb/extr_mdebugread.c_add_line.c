
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linetable {size_t nitems; TYPE_1__* item; } ;
struct TYPE_2__ {int line; int pc; } ;
typedef int CORE_ADDR ;



__attribute__((used)) static int
add_line (struct linetable *lt, int lineno, CORE_ADDR adr, int last)
{


  if (lineno == 0)
    lineno = 1;
  if (last == 0)
    last = -2;

  if (last == lineno)
    return lineno;

  lt->item[lt->nitems].line = lineno;
  lt->item[lt->nitems++].pc = adr << 2;
  return lineno;
}
