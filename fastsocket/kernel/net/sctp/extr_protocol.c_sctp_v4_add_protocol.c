
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int IPPROTO_SCTP ;
 scalar_t__ inet_add_protocol (int *,int ) ;
 int register_inetaddr_notifier (int *) ;
 int sctp_inetaddr_notifier ;
 int sctp_protocol ;

__attribute__((used)) static int sctp_v4_add_protocol(void)
{

 register_inetaddr_notifier(&sctp_inetaddr_notifier);


 if (inet_add_protocol(&sctp_protocol, IPPROTO_SCTP) < 0)
  return -EAGAIN;

 return 0;
}
