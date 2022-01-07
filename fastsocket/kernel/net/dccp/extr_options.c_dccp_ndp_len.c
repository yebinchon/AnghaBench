
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int const UINT_MAX ;
 int const USHORT_MAX ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline u8 dccp_ndp_len(const u64 ndp)
{
 if (likely(ndp <= 0xFF))
  return 1;
 return likely(ndp <= USHORT_MAX) ? 2 : (ndp <= UINT_MAX ? 4 : 6);
}
