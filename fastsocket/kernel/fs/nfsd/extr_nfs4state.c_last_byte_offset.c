
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int BUG_ON (int) ;
 scalar_t__ NFS4_MAX_UINT64 ;

__attribute__((used)) static inline u64
last_byte_offset(u64 start, u64 len)
{
 u64 end;

 BUG_ON(!len);
 end = start + len;
 return end > start ? end - 1: NFS4_MAX_UINT64;
}
