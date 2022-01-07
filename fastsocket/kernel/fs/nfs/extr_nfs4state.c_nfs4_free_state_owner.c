
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait; } ;
struct nfs4_state_owner {int so_cred; TYPE_1__ so_sequence; } ;


 int kfree (struct nfs4_state_owner*) ;
 int put_rpccred (int ) ;
 int rpc_destroy_wait_queue (int *) ;

__attribute__((used)) static void nfs4_free_state_owner(struct nfs4_state_owner *sp)
{
 rpc_destroy_wait_queue(&sp->so_sequence.wait);
 put_rpccred(sp->so_cred);
 kfree(sp);
}
