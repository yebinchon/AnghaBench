
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int dummy; } ;
struct rds_message {int dummy; } ;
struct msghdr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_level; int cmsg_type; } ;


 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int CMSG_OK (struct msghdr*,struct cmsghdr*) ;
 int EINVAL ;







 scalar_t__ SOL_RDS ;
 int rds_cmsg_atomic (struct rds_sock*,struct rds_message*,struct cmsghdr*) ;
 int rds_cmsg_rdma_args (struct rds_sock*,struct rds_message*,struct cmsghdr*) ;
 int rds_cmsg_rdma_dest (struct rds_sock*,struct rds_message*,struct cmsghdr*) ;
 int rds_cmsg_rdma_map (struct rds_sock*,struct rds_message*,struct cmsghdr*) ;

__attribute__((used)) static int rds_cmsg_send(struct rds_sock *rs, struct rds_message *rm,
    struct msghdr *msg, int *allocated_mr)
{
 struct cmsghdr *cmsg;
 int ret = 0;

 for (cmsg = CMSG_FIRSTHDR(msg); cmsg; cmsg = CMSG_NXTHDR(msg, cmsg)) {
  if (!CMSG_OK(msg, cmsg))
   return -EINVAL;

  if (cmsg->cmsg_level != SOL_RDS)
   continue;




  switch (cmsg->cmsg_type) {
  case 130:
   ret = rds_cmsg_rdma_args(rs, rm, cmsg);
   break;

  case 129:
   ret = rds_cmsg_rdma_dest(rs, rm, cmsg);
   break;

  case 128:
   ret = rds_cmsg_rdma_map(rs, rm, cmsg);
   if (!ret)
    *allocated_mr = 1;
   break;
  case 134:
  case 133:
  case 132:
  case 131:
   ret = rds_cmsg_atomic(rs, rm, cmsg);
   break;

  default:
   return -EINVAL;
  }

  if (ret)
   break;
 }

 return ret;
}
