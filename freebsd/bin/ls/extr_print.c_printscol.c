
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int s_block; int s_inode; TYPE_1__* list; } ;
struct TYPE_6__ {struct TYPE_6__* fts_link; } ;
typedef TYPE_1__ FTSENT ;
typedef TYPE_2__ DISPLAY ;


 scalar_t__ IS_NOPRINT (TYPE_1__*) ;
 int printaname (TYPE_1__*,int ,int ) ;
 int putchar (char) ;

void
printscol(const DISPLAY *dp)
{
 FTSENT *p;

 for (p = dp->list; p; p = p->fts_link) {
  if (IS_NOPRINT(p))
   continue;
  (void)printaname(p, dp->s_inode, dp->s_block);
  (void)putchar('\n');
 }
}
