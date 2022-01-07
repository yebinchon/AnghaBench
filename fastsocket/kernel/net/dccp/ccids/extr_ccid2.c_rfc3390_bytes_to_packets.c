
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 rfc3390_bytes_to_packets(const u32 smss)
{
 return smss <= 1095 ? 4 : (smss > 2190 ? 2 : 3);
}
