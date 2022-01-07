
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct rpc_clnt* private; } ;
struct rpc_clnt {int cl_vers; int cl_prog; int cl_protname; int cl_server; } ;


 int RPC_DISPLAY_ADDR ;
 int RPC_DISPLAY_PORT ;
 int RPC_DISPLAY_PROTO ;
 int rpc_peeraddr2str (struct rpc_clnt*,int ) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;

__attribute__((used)) static int
rpc_show_info(struct seq_file *m, void *v)
{
 struct rpc_clnt *clnt = m->private;

 seq_printf(m, "RPC server: %s\n", clnt->cl_server);
 seq_printf(m, "service: %s (%d) version %d\n", clnt->cl_protname,
   clnt->cl_prog, clnt->cl_vers);
 seq_printf(m, "address: %s\n", rpc_peeraddr2str(clnt, RPC_DISPLAY_ADDR));
 seq_printf(m, "protocol: %s\n", rpc_peeraddr2str(clnt, RPC_DISPLAY_PROTO));
 seq_printf(m, "port: %s\n", rpc_peeraddr2str(clnt, RPC_DISPLAY_PORT));
 return 0;
}
