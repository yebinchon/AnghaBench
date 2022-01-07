
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct loop {TYPE_2__* single_exit; struct loop* outer; } ;
typedef TYPE_3__* basic_block ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {TYPE_1__* src; } ;
struct TYPE_5__ {int flags; } ;


 int BB_DUPLICATED ;

__attribute__((used)) static void
update_single_exits_after_duplication (basic_block *bbs, unsigned nbbs,
           struct loop *loop)
{
  unsigned i;

  for (i = 0; i < nbbs; i++)
    bbs[i]->flags |= BB_DUPLICATED;

  for (; loop->outer; loop = loop->outer)
    {
      if (!loop->single_exit)
 continue;

      if (loop->single_exit->src->flags & BB_DUPLICATED)
 loop->single_exit = ((void*)0);
    }

  for (i = 0; i < nbbs; i++)
    bbs[i]->flags &= ~BB_DUPLICATED;
}
