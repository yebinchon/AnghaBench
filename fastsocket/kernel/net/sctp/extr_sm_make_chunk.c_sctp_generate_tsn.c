
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
typedef int __u32 ;


 int get_random_bytes (int *,int) ;

__u32 sctp_generate_tsn(const struct sctp_endpoint *ep)
{
 __u32 retval;

 get_random_bytes(&retval, sizeof(__u32));
 return retval;
}
