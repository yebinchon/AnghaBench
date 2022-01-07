
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct gss_upcall_msg {int dummy; } ;


 int gss_encode_v0_msg (struct gss_upcall_msg*) ;
 int gss_encode_v1_msg (struct gss_upcall_msg*,struct rpc_clnt*,int) ;
 scalar_t__ pipe_version ;

__attribute__((used)) static void gss_encode_msg(struct gss_upcall_msg *gss_msg,
    struct rpc_clnt *clnt, int machine_cred)
{
 if (pipe_version == 0)
  gss_encode_v0_msg(gss_msg);
 else
  gss_encode_v1_msg(gss_msg, clnt, machine_cred);
}
