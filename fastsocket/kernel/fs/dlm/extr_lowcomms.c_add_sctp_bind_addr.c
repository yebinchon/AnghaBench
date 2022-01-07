
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connection {int sock; } ;
struct TYPE_2__ {int ci_tcp_port; } ;


 int SCTP_SOCKOPT_BINDX_ADD ;
 int SOL_SCTP ;
 TYPE_1__ dlm_config ;
 int kernel_bind (int ,struct sockaddr*,int) ;
 int kernel_setsockopt (int ,int ,int ,char*,int) ;
 int log_print (char*,int ,int) ;

__attribute__((used)) static int add_sctp_bind_addr(struct connection *sctp_con,
         struct sockaddr_storage *addr,
         int addr_len, int num)
{
 int result = 0;

 if (num == 1)
  result = kernel_bind(sctp_con->sock,
         (struct sockaddr *) addr,
         addr_len);
 else
  result = kernel_setsockopt(sctp_con->sock, SOL_SCTP,
        SCTP_SOCKOPT_BINDX_ADD,
        (char *)addr, addr_len);

 if (result < 0)
  log_print("Can't bind to port %d addr number %d",
     dlm_config.ci_tcp_port, num);

 return result;
}
