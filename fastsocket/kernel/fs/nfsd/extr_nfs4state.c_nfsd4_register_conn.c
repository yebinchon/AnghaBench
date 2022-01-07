
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int callback; } ;
struct nfsd4_conn {TYPE_1__ cn_xpt_user; int cn_xprt; } ;


 int nfsd4_conn_lost ;
 int register_xpt_user (int ,TYPE_1__*) ;

__attribute__((used)) static int nfsd4_register_conn(struct nfsd4_conn *conn)
{
 conn->cn_xpt_user.callback = nfsd4_conn_lost;
 return register_xpt_user(conn->cn_xprt, &conn->cn_xpt_user);
}
