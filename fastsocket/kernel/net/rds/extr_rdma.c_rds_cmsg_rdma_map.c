
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_sock {int dummy; } ;
struct TYPE_2__ {int op_rdma_mr; } ;
struct rds_message {scalar_t__ m_rdma_cookie; TYPE_1__ rdma; } ;
struct rds_get_mr_args {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_len; } ;


 int CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 int EINVAL ;
 int __rds_rdma_map (struct rds_sock*,int ,scalar_t__*,int *) ;

int rds_cmsg_rdma_map(struct rds_sock *rs, struct rds_message *rm,
     struct cmsghdr *cmsg)
{
 if (cmsg->cmsg_len < CMSG_LEN(sizeof(struct rds_get_mr_args))
  || rm->m_rdma_cookie != 0)
  return -EINVAL;

 return __rds_rdma_map(rs, CMSG_DATA(cmsg), &rm->m_rdma_cookie, &rm->rdma.op_rdma_mr);
}
