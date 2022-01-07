
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



__attribute__((used)) static inline __u32 CNVT_TOHW(__u32 val, __u32 width)
{
 return ((val<<width) + 0x7FFF - val)>>16;
}
