
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static __inline__ int route4_hash_from(u32 id)
{
 return (id>>16)&0xF;
}
