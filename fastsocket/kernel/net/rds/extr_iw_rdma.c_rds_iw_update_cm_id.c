
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_3__ sin_addr; } ;
struct rds_sock {int rs_conn_port; int rs_conn_addr; int rs_bound_port; int rs_bound_addr; } ;
struct rds_iw_device {int dummy; } ;
struct TYPE_4__ {int dst_addr; int src_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct rdma_cm_id {TYPE_2__ route; } ;


 int rds_iw_add_cm_id (struct rds_iw_device*,struct rdma_cm_id*) ;
 int rds_iw_get_device (struct rds_sock*,struct rds_iw_device**,struct rdma_cm_id**) ;
 int rds_iw_remove_cm_id (struct rds_iw_device*,struct rdma_cm_id*) ;

int rds_iw_update_cm_id(struct rds_iw_device *rds_iwdev, struct rdma_cm_id *cm_id)
{
 struct sockaddr_in *src_addr, *dst_addr;
 struct rds_iw_device *rds_iwdev_old;
 struct rds_sock rs;
 struct rdma_cm_id *pcm_id;
 int rc;

 src_addr = (struct sockaddr_in *)&cm_id->route.addr.src_addr;
 dst_addr = (struct sockaddr_in *)&cm_id->route.addr.dst_addr;

 rs.rs_bound_addr = src_addr->sin_addr.s_addr;
 rs.rs_bound_port = src_addr->sin_port;
 rs.rs_conn_addr = dst_addr->sin_addr.s_addr;
 rs.rs_conn_port = dst_addr->sin_port;

 rc = rds_iw_get_device(&rs, &rds_iwdev_old, &pcm_id);
 if (rc)
  rds_iw_remove_cm_id(rds_iwdev, cm_id);

 return rds_iw_add_cm_id(rds_iwdev, cm_id);
}
