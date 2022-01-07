
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_rep {int rr_unbind; } ;


 int wake_up (int *) ;

__attribute__((used)) static void
rpcrdma_unbind_func(struct rpcrdma_rep *rep)
{
 wake_up(&rep->rr_unbind);
}
