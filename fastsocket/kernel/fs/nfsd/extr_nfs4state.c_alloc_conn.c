
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int rq_xprt; } ;
struct TYPE_2__ {int list; } ;
struct nfsd4_conn {TYPE_1__ cn_xpt_user; int cn_flags; int cn_xprt; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nfsd4_conn* kmalloc (int,int ) ;
 int svc_xprt_get (int ) ;

__attribute__((used)) static struct nfsd4_conn *alloc_conn(struct svc_rqst *rqstp, u32 flags)
{
 struct nfsd4_conn *conn;

 conn = kmalloc(sizeof(struct nfsd4_conn), GFP_KERNEL);
 if (!conn)
  return ((void*)0);
 svc_xprt_get(rqstp->rq_xprt);
 conn->cn_xprt = rqstp->rq_xprt;
 conn->cn_flags = flags;
 INIT_LIST_HEAD(&conn->cn_xpt_user.list);
 return conn;
}
