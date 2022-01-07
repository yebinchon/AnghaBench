
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct rds_sock {int rs_lock; int rs_cong_notify; } ;
struct msghdr {int dummy; } ;
typedef int notify ;


 int RDS_CMSG_CONG_UPDATE ;
 int SOL_RDS ;
 int put_cmsg (struct msghdr*,int ,int ,int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rds_notify_cong(struct rds_sock *rs, struct msghdr *msghdr)
{
 uint64_t notify = rs->rs_cong_notify;
 unsigned long flags;
 int err;

 err = put_cmsg(msghdr, SOL_RDS, RDS_CMSG_CONG_UPDATE,
   sizeof(notify), &notify);
 if (err)
  return err;

 spin_lock_irqsave(&rs->rs_lock, flags);
 rs->rs_cong_notify &= ~notify;
 spin_unlock_irqrestore(&rs->rs_lock, flags);

 return 0;
}
