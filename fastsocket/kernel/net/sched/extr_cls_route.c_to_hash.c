
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 to_hash(u32 id)
{
 u32 h = id&0xFF;
 if (id&0x8000)
  h += 256;
 return h;
}
