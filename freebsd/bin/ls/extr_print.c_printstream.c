
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int s_block; int s_inode; TYPE_1__* list; } ;
struct TYPE_5__ {scalar_t__ fts_number; struct TYPE_5__* fts_link; int fts_name; } ;
typedef TYPE_1__ FTSENT ;
typedef TYPE_2__ DISPLAY ;


 scalar_t__ NO_PRINT ;
 scalar_t__ printaname (TYPE_1__*,int ,int ) ;
 int printf (char*) ;
 int putchar (char) ;
 unsigned int strlen (int ) ;
 scalar_t__ termwidth ;

void
printstream(const DISPLAY *dp)
{
 FTSENT *p;
 int chcnt;

 for (p = dp->list, chcnt = 0; p; p = p->fts_link) {
  if (p->fts_number == NO_PRINT)
   continue;

  if (strlen(p->fts_name) + chcnt +
      (p->fts_link ? 2 : 0) >= (unsigned)termwidth) {
   putchar('\n');
   chcnt = 0;
  }
  chcnt += printaname(p, dp->s_inode, dp->s_block);
  if (p->fts_link) {
   printf(", ");
   chcnt += 2;
  }
 }
 if (chcnt)
  putchar('\n');
}
