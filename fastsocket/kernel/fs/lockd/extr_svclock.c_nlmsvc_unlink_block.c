
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nlm_block {TYPE_4__* b_call; TYPE_1__* b_file; } ;
struct TYPE_6__ {int fl; } ;
struct TYPE_7__ {TYPE_2__ lock; } ;
struct TYPE_8__ {TYPE_3__ a_args; } ;
struct TYPE_5__ {int f_file; } ;


 int dprintk (char*,struct nlm_block*) ;
 int nlmsvc_remove_block (struct nlm_block*) ;
 int posix_unblock_lock (int ,int *) ;

__attribute__((used)) static int nlmsvc_unlink_block(struct nlm_block *block)
{
 int status;
 dprintk("lockd: unlinking block %p...\n", block);


 status = posix_unblock_lock(block->b_file->f_file, &block->b_call->a_args.lock.fl);
 nlmsvc_remove_block(block);
 return status;
}
