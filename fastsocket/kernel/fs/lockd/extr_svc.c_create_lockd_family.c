
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;


 int create_lockd_listener (struct svc_serv*,char*,int const,int ) ;
 int nlm_tcpport ;
 int nlm_udpport ;

__attribute__((used)) static int create_lockd_family(struct svc_serv *serv, const int family)
{
 int err;

 err = create_lockd_listener(serv, "udp", family, nlm_udpport);
 if (err < 0)
  return err;

 return create_lockd_listener(serv, "tcp", family, nlm_tcpport);
}
