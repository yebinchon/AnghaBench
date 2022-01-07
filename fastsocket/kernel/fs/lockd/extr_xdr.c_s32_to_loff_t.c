
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;
typedef int __s32 ;



__attribute__((used)) static inline loff_t
s32_to_loff_t(__s32 offset)
{
 return (loff_t)offset;
}
