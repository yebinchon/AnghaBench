
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_pnode {size_t iip; TYPE_2__* parent; } ;
struct ubifs_info {int pnode_sz; } ;
struct TYPE_4__ {TYPE_1__* nbranch; } ;
struct TYPE_3__ {int lnum; } ;


 int ubifs_add_lpt_dirt (struct ubifs_info*,int ,int ) ;

__attribute__((used)) static void add_pnode_dirt(struct ubifs_info *c, struct ubifs_pnode *pnode)
{
 ubifs_add_lpt_dirt(c, pnode->parent->nbranch[pnode->iip].lnum,
      c->pnode_sz);
}
