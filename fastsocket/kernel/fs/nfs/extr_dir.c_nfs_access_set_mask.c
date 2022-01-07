
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs_access_entry {int mask; } ;


 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int NFS4_ACCESS_DELETE ;
 int NFS4_ACCESS_EXECUTE ;
 int NFS4_ACCESS_EXTEND ;
 int NFS4_ACCESS_LOOKUP ;
 int NFS4_ACCESS_MODIFY ;
 int NFS4_ACCESS_READ ;

void nfs_access_set_mask(struct nfs_access_entry *entry, u32 access_result)
{
 entry->mask = 0;
 if (access_result & NFS4_ACCESS_READ)
  entry->mask |= MAY_READ;
 if (access_result &
     (NFS4_ACCESS_MODIFY | NFS4_ACCESS_EXTEND | NFS4_ACCESS_DELETE))
  entry->mask |= MAY_WRITE;
 if (access_result & (NFS4_ACCESS_LOOKUP|NFS4_ACCESS_EXECUTE))
  entry->mask |= MAY_EXEC;
}
