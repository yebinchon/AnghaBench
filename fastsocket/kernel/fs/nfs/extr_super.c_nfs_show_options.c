
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_sb; } ;
struct seq_file {int dummy; } ;
struct nfs_server {TYPE_1__* nfs_client; } ;
struct TYPE_2__ {int cl_rpcclient; } ;


 struct nfs_server* NFS_SB (int ) ;
 int RPC_DISPLAY_ADDR ;
 int nfs_show_mount_options (struct seq_file*,struct nfs_server*,int ) ;
 int rpc_peeraddr2str (int ,int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int nfs_show_options(struct seq_file *m, struct vfsmount *mnt)
{
 struct nfs_server *nfss = NFS_SB(mnt->mnt_sb);

 nfs_show_mount_options(m, nfss, 0);

 seq_printf(m, ",addr=%s",
   rpc_peeraddr2str(nfss->nfs_client->cl_rpcclient,
       RPC_DISPLAY_ADDR));

 return 0;
}
