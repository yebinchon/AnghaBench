
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_timeout {unsigned int to_initval; unsigned int to_retries; int to_increment; void* to_maxval; int to_exponential; } ;


 int BUG () ;
 unsigned int HZ ;
 unsigned int NFS_DEF_TCP_RETRANS ;
 unsigned int NFS_DEF_TCP_TIMEO ;
 int NFS_DEF_UDP_RETRANS ;
 unsigned int NFS_DEF_UDP_TIMEO ;
 void* NFS_MAX_TCP_TIMEOUT ;
 void* NFS_MAX_UDP_TIMEOUT ;




__attribute__((used)) static void nfs_init_timeout_values(struct rpc_timeout *to, int proto,
        unsigned int timeo, unsigned int retrans)
{
 to->to_initval = timeo * HZ / 10;
 to->to_retries = retrans;

 switch (proto) {
 case 129:
 case 130:
  if (to->to_retries == 0)
   to->to_retries = NFS_DEF_TCP_RETRANS;
  if (to->to_initval == 0)
   to->to_initval = NFS_DEF_TCP_TIMEO * HZ / 10;
  if (to->to_initval > NFS_MAX_TCP_TIMEOUT)
   to->to_initval = NFS_MAX_TCP_TIMEOUT;
  to->to_increment = to->to_initval;
  to->to_maxval = to->to_initval + (to->to_increment * to->to_retries);
  if (to->to_maxval > NFS_MAX_TCP_TIMEOUT)
   to->to_maxval = NFS_MAX_TCP_TIMEOUT;
  if (to->to_maxval < to->to_initval)
   to->to_maxval = to->to_initval;
  to->to_exponential = 0;
  break;
 case 128:
  if (to->to_retries == 0)
   to->to_retries = NFS_DEF_UDP_RETRANS;
  if (!to->to_initval)
   to->to_initval = NFS_DEF_UDP_TIMEO * HZ / 10;
  if (to->to_initval > NFS_MAX_UDP_TIMEOUT)
   to->to_initval = NFS_MAX_UDP_TIMEOUT;
  to->to_maxval = NFS_MAX_UDP_TIMEOUT;
  to->to_exponential = 1;
  break;
 default:
  BUG();
 }
}
