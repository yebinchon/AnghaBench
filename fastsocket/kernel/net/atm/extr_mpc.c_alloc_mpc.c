
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mpc_p6; int mpc_p5; int mpc_p4; int mpc_p3; int mpc_p2; int mpc_p1; } ;
struct mpoa_client {TYPE_1__ parameters; struct mpoa_client* next; int egress_lock; int ingress_lock; } ;


 int GFP_KERNEL ;
 int MPC_P1 ;
 int MPC_P2 ;
 int MPC_P4 ;
 int MPC_P5 ;
 int MPC_P6 ;
 int atm_mpoa_init_cache (struct mpoa_client*) ;
 struct mpoa_client* kzalloc (int,int ) ;
 int memset (int ,int ,int) ;
 struct mpoa_client* mpcs ;
 int rwlock_init (int *) ;

__attribute__((used)) static struct mpoa_client *alloc_mpc(void)
{
 struct mpoa_client *mpc;

 mpc = kzalloc(sizeof (struct mpoa_client), GFP_KERNEL);
 if (mpc == ((void*)0))
  return ((void*)0);
 rwlock_init(&mpc->ingress_lock);
 rwlock_init(&mpc->egress_lock);
 mpc->next = mpcs;
 atm_mpoa_init_cache(mpc);

 mpc->parameters.mpc_p1 = MPC_P1;
 mpc->parameters.mpc_p2 = MPC_P2;
 memset(mpc->parameters.mpc_p3,0,sizeof(mpc->parameters.mpc_p3));
 mpc->parameters.mpc_p4 = MPC_P4;
 mpc->parameters.mpc_p5 = MPC_P5;
 mpc->parameters.mpc_p6 = MPC_P6;

 mpcs = mpc;

 return mpc;
}
