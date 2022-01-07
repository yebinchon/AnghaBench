
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 int BUG_ON (int) ;
 scalar_t__ div_u64 (scalar_t__,int ) ;

__attribute__((used)) static inline unsigned long offset_to_bit(u64 bitmap_start, u32 unit,
       u64 offset)
{
 BUG_ON(offset < bitmap_start);
 offset -= bitmap_start;
 return (unsigned long)(div_u64(offset, unit));
}
