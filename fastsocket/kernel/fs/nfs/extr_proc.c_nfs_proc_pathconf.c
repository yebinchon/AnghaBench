
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_pathconf {int max_namelen; scalar_t__ max_link; } ;
struct nfs_fh {int dummy; } ;


 int NFS2_MAXNAMLEN ;

__attribute__((used)) static int
nfs_proc_pathconf(struct nfs_server *server, struct nfs_fh *fhandle,
    struct nfs_pathconf *info)
{
 info->max_link = 0;
 info->max_namelen = NFS2_MAXNAMLEN;
 return 0;
}
