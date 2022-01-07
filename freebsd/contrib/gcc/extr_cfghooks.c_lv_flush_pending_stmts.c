
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int edge ;
struct TYPE_2__ {int (* flush_pending_stmts ) (int ) ;} ;


 TYPE_1__* cfg_hooks ;
 int stub1 (int ) ;

void
lv_flush_pending_stmts (edge e)
{
  if (cfg_hooks->flush_pending_stmts)
    cfg_hooks->flush_pending_stmts (e);
}
