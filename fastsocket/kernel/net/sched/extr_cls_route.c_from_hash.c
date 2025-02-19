
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 from_hash(u32 id)
{
 id &= 0xFFFF;
 if (id == 0xFFFF)
  return 32;
 if (!(id & 0x8000)) {
  if (id > 255)
   return 256;
  return id&0xF;
 }
 return 16 + (id&0xF);
}
