
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_message {int dummy; } ;





 int RDS_RDMA_OTHER_ERROR ;
 int RDS_RDMA_REMOTE_ERROR ;
 int RDS_RDMA_SUCCESS ;
 int rds_rdma_send_complete (struct rds_message*,int) ;

__attribute__((used)) static void rds_iw_send_rdma_complete(struct rds_message *rm,
          int wc_status)
{
 int notify_status;

 switch (wc_status) {
 case 128:
  return;

 case 129:
  notify_status = RDS_RDMA_SUCCESS;
  break;

 case 130:
  notify_status = RDS_RDMA_REMOTE_ERROR;
  break;

 default:
  notify_status = RDS_RDMA_OTHER_ERROR;
  break;
 }
 rds_rdma_send_complete(rm, notify_status);
}
