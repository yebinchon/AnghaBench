
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int flags; } ;


 int BB_FORWARDER_BLOCK ;
 scalar_t__ forwarder_block_p (TYPE_1__*) ;

__attribute__((used)) static void
notice_new_block (basic_block bb)
{
  if (!bb)
    return;

  if (forwarder_block_p (bb))
    bb->flags |= BB_FORWARDER_BLOCK;
}
