
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;


 int FMODE_READ ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_REVAL_FORCED ;
 scalar_t__ nfs_have_delegation (struct inode*,int ) ;

__attribute__((used)) static inline int nfs_have_delegated_attributes(struct inode *inode)
{
 return nfs_have_delegation(inode, FMODE_READ) &&
  !(NFS_I(inode)->cache_validity & NFS_INO_REVAL_FORCED);
}
