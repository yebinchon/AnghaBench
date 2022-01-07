
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_delegation {int flags; int inode; } ;
struct nfs_client {int cl_state; } ;
struct TYPE_2__ {struct nfs_client* nfs_client; } ;


 int NFS4CLNT_DELEGRETURN ;
 int NFS_DELEGATION_RETURN ;
 TYPE_1__* NFS_SERVER (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs_mark_return_delegation(struct nfs_delegation *delegation)
{
 struct nfs_client *clp = NFS_SERVER(delegation->inode)->nfs_client;

 set_bit(NFS_DELEGATION_RETURN, &delegation->flags);
 set_bit(NFS4CLNT_DELEGRETURN, &clp->cl_state);
}
