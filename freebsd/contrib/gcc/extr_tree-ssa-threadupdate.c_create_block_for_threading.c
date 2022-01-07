
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct redirection_data {TYPE_1__* dup_block; } ;
typedef int basic_block ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ frequency; } ;


 TYPE_1__* duplicate_block (int ,int *,int *) ;
 int remove_ctrl_stmt_and_useless_edges (TYPE_1__*,int *) ;

__attribute__((used)) static void
create_block_for_threading (basic_block bb, struct redirection_data *rd)
{


  rd->dup_block = duplicate_block (bb, ((void*)0), ((void*)0));


  rd->dup_block->frequency = 0;
  rd->dup_block->count = 0;







  remove_ctrl_stmt_and_useless_edges (rd->dup_block, ((void*)0));
}
