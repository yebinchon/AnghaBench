
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct rdma_cm_id {TYPE_2__* device; } ;
typedef int sin ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ node_type; } ;


 int AF_INET ;
 int EADDRNOTAVAIL ;
 int IB_QPT_RC ;
 scalar_t__ IS_ERR (struct rdma_cm_id*) ;
 int PTR_ERR (struct rdma_cm_id*) ;
 scalar_t__ RDMA_NODE_RNIC ;
 int RDMA_PS_TCP ;
 int memset (struct sockaddr_in*,int ,int) ;
 int rdma_bind_addr (struct rdma_cm_id*,struct sockaddr*) ;
 struct rdma_cm_id* rdma_create_id (int *,int *,int ,int ) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdsdebug (char*,int *,int,int) ;

__attribute__((used)) static int rds_iw_laddr_check(__be32 addr)
{
 int ret;
 struct rdma_cm_id *cm_id;
 struct sockaddr_in sin;




 cm_id = rdma_create_id(((void*)0), ((void*)0), RDMA_PS_TCP, IB_QPT_RC);
 if (IS_ERR(cm_id))
  return PTR_ERR(cm_id);

 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = addr;


 ret = rdma_bind_addr(cm_id, (struct sockaddr *)&sin);


 if (ret || cm_id->device->node_type != RDMA_NODE_RNIC)
  ret = -EADDRNOTAVAIL;

 rdsdebug("addr %pI4 ret %d node type %d\n",
  &addr, ret,
  cm_id->device ? cm_id->device->node_type : -1);

 rdma_destroy_id(cm_id);

 return ret;
}
