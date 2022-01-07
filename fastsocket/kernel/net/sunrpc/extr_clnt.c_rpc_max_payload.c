
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_clnt {TYPE_1__* cl_xprt; } ;
struct TYPE_2__ {size_t max_payload; } ;



size_t rpc_max_payload(struct rpc_clnt *clnt)
{
 return clnt->cl_xprt->max_payload;
}
