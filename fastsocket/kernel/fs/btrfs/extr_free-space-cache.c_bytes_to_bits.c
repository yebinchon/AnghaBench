
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 scalar_t__ div_u64 (int ,int ) ;

__attribute__((used)) static inline unsigned long bytes_to_bits(u64 bytes, u32 unit)
{
 return (unsigned long)(div_u64(bytes, unit));
}
