
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef scalar_t__ __u16 ;
typedef int __le16 ;


 int cpu_to_le16 (scalar_t__) ;

__attribute__((used)) static inline void ConvertToNWfromDWORD(__u16 v0, __u16 v1, __u8 ret[6])
{
 __le16 *dest = (__le16 *) ret;
 dest[1] = cpu_to_le16(v0);
 dest[2] = cpu_to_le16(v1);
 dest[0] = cpu_to_le16(v0 + 1);
 return;
}
