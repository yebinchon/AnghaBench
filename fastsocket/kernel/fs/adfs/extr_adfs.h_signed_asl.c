
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



__attribute__((used)) static inline __u32 signed_asl(__u32 val, signed int shift)
{
 if (shift >= 0)
  val <<= shift;
 else
  val >>= -shift;
 return val;
}
