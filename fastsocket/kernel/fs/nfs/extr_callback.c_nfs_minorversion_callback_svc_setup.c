
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_serv {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct rpc_xprt {int dummy; } ;



__attribute__((used)) static inline int nfs_minorversion_callback_svc_setup(u32 minorversion,
  struct svc_serv *serv, struct rpc_xprt *xprt,
  struct svc_rqst **rqstpp, int (**callback_svc)(void *vrqstp))
{
 return 0;
}
