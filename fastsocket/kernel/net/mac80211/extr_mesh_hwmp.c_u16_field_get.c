
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int get_unaligned_le16 (int const*) ;

__attribute__((used)) static inline u32 u16_field_get(const u8 *preq_elem, int offset, bool ae)
{
 if (ae)
  offset += 6;
 return get_unaligned_le16(preq_elem + offset);
}
