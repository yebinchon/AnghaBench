
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct cmsghdr {int cmsg_level; } ;




 int svc_udp_get_dest_address4 (struct svc_rqst*,struct cmsghdr*) ;
 int svc_udp_get_dest_address6 (struct svc_rqst*,struct cmsghdr*) ;

__attribute__((used)) static int svc_udp_get_dest_address(struct svc_rqst *rqstp,
        struct cmsghdr *cmh)
{
 switch (cmh->cmsg_level) {
 case 129:
  return svc_udp_get_dest_address4(rqstp, cmh);
 case 128:
  return svc_udp_get_dest_address6(rqstp, cmh);
 }

 return 0;
}
