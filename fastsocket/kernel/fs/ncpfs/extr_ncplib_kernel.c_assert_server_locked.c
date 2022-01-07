
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {scalar_t__ lock; } ;


 int DPRINTK (char*) ;

__attribute__((used)) static inline void assert_server_locked(struct ncp_server *server)
{
 if (server->lock == 0) {
  DPRINTK("ncpfs: server not locked!\n");
 }
}
