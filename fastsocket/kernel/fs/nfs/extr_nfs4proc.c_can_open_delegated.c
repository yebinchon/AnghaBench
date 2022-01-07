
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int type; int flags; } ;
typedef int fmode_t ;


 int NFS_DELEGATION_NEED_RECLAIM ;
 int NFS_DELEGATION_RETURNING ;
 int nfs_mark_delegation_referenced (struct nfs_delegation*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int can_open_delegated(struct nfs_delegation *delegation, fmode_t fmode)
{
 if (delegation == ((void*)0))
  return 0;
 if ((delegation->type & fmode) != fmode)
  return 0;
 if (test_bit(NFS_DELEGATION_NEED_RECLAIM, &delegation->flags))
  return 0;
 if (test_bit(NFS_DELEGATION_RETURNING, &delegation->flags))
  return 0;
 nfs_mark_delegation_referenced(delegation);
 return 1;
}
