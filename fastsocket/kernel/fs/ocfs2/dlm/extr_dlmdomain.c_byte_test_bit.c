
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int byte_test_bit(u8 nr, u8 map[])
{
 return ((1UL << (nr & 7)) & (map[nr >> 3])) != 0;
}
