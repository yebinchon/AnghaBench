
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int dummy; } ;
struct inode {int i_mapping; } ;


 int nfs_direct_complete (struct nfs_direct_req*) ;
 int nfs_zap_mapping (struct inode*,int ) ;

__attribute__((used)) static void nfs_direct_write_complete(struct nfs_direct_req *dreq, struct inode *inode)
{
 nfs_zap_mapping(inode, inode->i_mapping);
 nfs_direct_complete(dreq);
}
