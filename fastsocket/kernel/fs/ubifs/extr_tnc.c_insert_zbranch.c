
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_znode {int child_cnt; int alt; struct ubifs_zbranch* zbranch; scalar_t__ level; } ;
struct ubifs_zbranch {TYPE_1__* znode; } ;
struct TYPE_2__ {int iip; } ;


 int ubifs_assert (int ) ;
 int ubifs_zn_dirty (struct ubifs_znode*) ;

__attribute__((used)) static void insert_zbranch(struct ubifs_znode *znode,
      const struct ubifs_zbranch *zbr, int n)
{
 int i;

 ubifs_assert(ubifs_zn_dirty(znode));

 if (znode->level) {
  for (i = znode->child_cnt; i > n; i--) {
   znode->zbranch[i] = znode->zbranch[i - 1];
   if (znode->zbranch[i].znode)
    znode->zbranch[i].znode->iip = i;
  }
  if (zbr->znode)
   zbr->znode->iip = n;
 } else
  for (i = znode->child_cnt; i > n; i--)
   znode->zbranch[i] = znode->zbranch[i - 1];

 znode->zbranch[n] = *zbr;
 znode->child_cnt += 1;
 if (n == 0)
  znode->alt = 1;
}
