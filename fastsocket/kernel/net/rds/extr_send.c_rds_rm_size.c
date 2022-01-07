
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct msghdr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_level; int cmsg_type; } ;


 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int CMSG_OK (struct msghdr*,struct cmsghdr*) ;
 int EINVAL ;
 int PAGE_SIZE ;







 scalar_t__ SOL_RDS ;
 int ceil (int,int ) ;
 int rds_rdma_extra_size (int ) ;

__attribute__((used)) static int rds_rm_size(struct msghdr *msg, int data_len)
{
 struct cmsghdr *cmsg;
 int size = 0;
 int cmsg_groups = 0;
 int retval;

 for (cmsg = CMSG_FIRSTHDR(msg); cmsg; cmsg = CMSG_NXTHDR(msg, cmsg)) {
  if (!CMSG_OK(msg, cmsg))
   return -EINVAL;

  if (cmsg->cmsg_level != SOL_RDS)
   continue;

  switch (cmsg->cmsg_type) {
  case 130:
   cmsg_groups |= 1;
   retval = rds_rdma_extra_size(CMSG_DATA(cmsg));
   if (retval < 0)
    return retval;
   size += retval;

   break;

  case 129:
  case 128:
   cmsg_groups |= 2;

   break;

  case 134:
  case 133:
  case 132:
  case 131:
   cmsg_groups |= 1;
   size += sizeof(struct scatterlist);
   break;

  default:
   return -EINVAL;
  }

 }

 size += ceil(data_len, PAGE_SIZE) * sizeof(struct scatterlist);


 if (cmsg_groups == 3)
  return -EINVAL;

 return size;
}
