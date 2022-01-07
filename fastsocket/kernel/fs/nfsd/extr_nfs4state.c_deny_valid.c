
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ NFS4_SHARE_DENY_BOTH ;

__attribute__((used)) static inline int deny_valid(u32 x)
{

 return x <= NFS4_SHARE_DENY_BOTH;
}
