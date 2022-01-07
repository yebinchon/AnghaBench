
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIF_TABLE_SIZE ;

__attribute__((used)) static inline unsigned long rif_hash(const unsigned char *addr)
{
 unsigned long x;

 x = addr[0];
 x = (x << 2) ^ addr[1];
 x = (x << 2) ^ addr[2];
 x = (x << 2) ^ addr[3];
 x = (x << 2) ^ addr[4];
 x = (x << 2) ^ addr[5];

 x ^= x >> 8;

 return x & (RIF_TABLE_SIZE - 1);
}
