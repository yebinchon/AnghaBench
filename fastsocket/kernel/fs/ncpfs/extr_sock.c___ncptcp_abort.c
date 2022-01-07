
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;


 int __abort_ncp_connection (struct ncp_server*) ;

__attribute__((used)) static inline void __ncptcp_abort(struct ncp_server *server)
{
 __abort_ncp_connection(server);
}
