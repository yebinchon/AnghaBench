
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int NFS4_ACE_READ_ACL ;
 int NFS4_ACE_READ_ATTRIBUTES ;
 int NFS4_ACE_WRITE_ACL ;
 int NFS4_ACE_WRITE_ATTRIBUTES ;

__attribute__((used)) static inline int check_deny(u32 mask, int isowner)
{
 if (mask & (NFS4_ACE_READ_ATTRIBUTES | NFS4_ACE_READ_ACL))
  return -EINVAL;
 if (!isowner)
  return 0;
 if (mask & (NFS4_ACE_WRITE_ATTRIBUTES | NFS4_ACE_WRITE_ACL))
  return -EINVAL;
 return 0;
}
