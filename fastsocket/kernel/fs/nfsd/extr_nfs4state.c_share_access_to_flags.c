
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NFS4_SHARE_ACCESS_READ ;
 int NFS4_SHARE_WANT_MASK ;
 int RD_STATE ;
 int WR_STATE ;

int share_access_to_flags(u32 share_access)
{
 share_access &= ~NFS4_SHARE_WANT_MASK;

 return share_access == NFS4_SHARE_ACCESS_READ ? RD_STATE : WR_STATE;
}
